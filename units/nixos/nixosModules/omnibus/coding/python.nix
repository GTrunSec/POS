# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{ lib }:
{
  options = with lib; {
    enableLspBridge = mkEnableOption "Enable the language server protocol bridge support";
    enableEmacsEaf = mkEnableOption "Enable the Emacs Application Framework support";
    python = mkOption {
      type = types.package;
      default = pkgs.python3;
      description = "The Python package to use";
    };
    extraPackages = mkOption {
      type = types.functionTo (types.listOf types.package);
      default = (ps: [ ]);
      description = "The language server package to use";
    };
  };
}
