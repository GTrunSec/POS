{
  omnibus,
  POP,
  flops,
  lib,
}:
let
  inputs =
    let
      loadInputs = omnibus.pops.loadInputs.setInitInputs ./__lock;
    in
    ((loadInputs.addInputsExtender (
      POP.lib.extendPop flops.lib.flake.pops.inputsExtender (
        self: super: {
          inputs = {
            nixpkgs = loadInputs.outputs.nixpkgs.legacyPackages;
            devshell = loadInputs.outputs.devshell.legacyPackages;
          };
        }
      )
    )).setSystem
      "x86_64-linux"
    ).outputs;

  devshellProfiles =
    (omnibus.pops.evalModules.devshell.loadProfiles.addLoadExtender {
      inputs = {
        inherit (inputs) fenix nixpkgs;
      };
    }).outputs.default;

  shell = inputs.devshell.mkShell {
    name = "rust";
    imports = [ devshellProfiles.rust ];
  };
in
lib.mapAttrs (_: builtins.unsafeDiscardStringContext) { rust = shell; }
