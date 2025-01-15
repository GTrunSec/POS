# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{
  pkgs,
  lib,
  config,
  omnibus,
  ...
}:
let
  cfg = config.omnibus.coding.python;
  pythonEnv = (
    cfg.python.withPackages (
      ps:
      with ps;
      (
        lib.unique (
          lib.optionals cfg.enableEmacsEaf [
            #emacs-eaf
            shapely
            dbus-python
            qrcode
            xlib
            grip
            black
            keyring
            # pyqt5
            # pyqtwebengine
            markdown
            feedparser
            retrying
            distutils
          ]
        )
        ++ (lib.optionals cfg.enableLspBridge [
          epc
          orjson
          ###
          pypinyin
          sexpdata
          six
          paramiko
          rapidfuzz
          watchdog
        ])
        ++ (cfg.extraPackages ps)
      )
    )
  );
in
#.override (args: {ignoreCollisions = true;});
{
  imports = [ omnibus.nixosModules.omnibus.coding.python ];
  environment.systemPackages =
    with pkgs;
    [
      pythonEnv
      poetry
    ]
    ++ lib.optionals pkgs.stdenv.isLinux [ ];
}
