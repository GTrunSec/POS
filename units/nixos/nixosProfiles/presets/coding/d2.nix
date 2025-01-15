# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{ pkgs, ... }:
{
  # environment.variables.PLAYWRIGHT_BROWSERS_PATH =
  #   pkgs.playwright-driver.browsers.outPath;
  environment.systemPackages = with pkgs; [
    #  python3Packages.playwright
    d2
  ];
}
