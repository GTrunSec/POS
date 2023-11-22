# SPDX-FileCopyrightText: 2023 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{
  super,
  root,
  projectDir,
  inputs,
}:
let
  outputs = root.lib.mapPopsExports super.pops;
in
{
  inherit (super) load;
  inherit (outputs)
    srvos
    nixosModules
    nixosProfiles
    darwinModules
    darwinProfiles
    homeProfiles
    homeModules
    devshellModules
    devshellProfiles
    flake
  ;

  scripts =
    (super.pops.scripts.addLoadExtender {
      load.inputs = {
        inputs = {
          nixpkgs = super.pops.flake.inputs.nixpkgs.legacyPackages.x86_64-linux;
          inherit (super.pops.flake.inputs) makesSrc;
        };
      };
    }).exports.default;

  units = {
    inherit (outputs) configs std;
    nixos = {
      inherit (outputs) nixosProfiles nixosModules;
    };
    darwin = {
      inherit (outputs) darwinProfiles darwinModules;
    };
    home-manager = {
      inherit (outputs) homeProfiles homeModules;
    };
    flake-parts = {
      inherit (outputs.flake-parts) profiles modules;
    };
    devshell = {
      inherit (outputs) devshellProfiles devshellModules;
    };
  };

  dotfiles = projectDir + "/dotfiles";

  # aliases
  flakeModules = outputs.flake-parts.profiles;
  flakeProfiles = outputs.flake-parts.modules;
}
