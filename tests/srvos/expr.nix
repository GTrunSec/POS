{
  super,
  trace,
  lib,
  root,
}:
let
  exporter = root.nixos.pops.layouts.default;
in
{
  srvosCommonOpenssh =
    (exporter.layouts.nixosConfiguration [
      exporter.layouts.exporter.nixosProfiles.default.presets.boot
      exporter.layouts.exporter.nixosProfiles.default.presets.openssh
      # -- suites profile --
      (exporter.layouts.exporter.nixosProfiles.default.cloud { }).default
    ]).config.services.openssh.settings.KexAlgorithms;
}
// lib.optionalAttrs trace { }