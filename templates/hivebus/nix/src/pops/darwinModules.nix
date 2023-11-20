# SPDX-FileCopyrightText: 2023 The omnibus Authors
#
# SPDX-License-Identifier: MIT

(omnibus.pops.nixosModules.addLoadExtender {
  load = {
    src = projectDir + "/units/nixos/darwinModules";
    inputs = {
      inputs = inputs;
    };
  };
})