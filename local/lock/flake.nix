# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos.follows = "nixpkgs";
    nixos-24_05.url = "github:nixos/nixpkgs/release-24.05";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    srvos.url = "github:numtide/srvos";
    srvos.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    nixcasks.url = "github:jacekszymanski/nixcasks";
    nixcasks.inputs.nixpkgs.follows = "nixpkgs";

    audioNix.url = "github:polygon/audio.nix";
    audioNix.inputs.nixpkgs.follows = "nixpkgs";

    nix-filter.url = "github:numtide/nix-filter";
  };

  inputs = {
    systems.url = "github:nix-systems/default";
    flake-utils.url = "github:numtide/flake-utils";
  };

  inputs = {
    devshell.url = "github:numtide/devshell";
    devshell.inputs.nixpkgs.follows = "nixpkgs";

    colmena.url = "github:zhaofengli/colmena";
    colmena.inputs.nixpkgs.follows = "nixpkgs";

    n2c.url = "github:nlewo/nix2container";
    n2c.inputs.nixpkgs.follows = "nixpkgs";
    n2c.inputs.flake-utils.follows = "flake-utils";

    arion.url = "github:hercules-ci/arion";
    arion.inputs.flake-parts.follows = "flake-parts";

    nixago.url = "github:nix-community/nixago";
    nixago.inputs.nixpkgs.follows = "nixpkgs";
    nixago.inputs.nixago-exts.follows = "";

    git-hooks.url = "github:cachix/git-hooks.nix";
    git-hooks.inputs.nixpkgs.follows = "nixpkgs";
    git-hooks.inputs.flake-compat.follows = "";

    fenix.url = "github:nix-community/fenix";
    fenix.inputs.nixpkgs.follows = "nixpkgs";

    makesSrc.url = "github:fluidattacks/makes";
    makesSrc.flake = false;

    nur.url = "github:nix-community/NUR";

    flake_env = {
      url = "sourcehut:~bryan_bennett/flake_env";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nix-filter.follows = "nix-filter";
    };

    topiary.url = "github:tweag/topiary";

    std.url = "github:divnix/std";
    std.inputs.nixpkgs.follows = "nixpkgs";
    std.inputs.nixago.follows = "nixago";
    std.inputs.devshell.follows = "devshell";
    std.inputs.microvm.follows = "microvm";
    std.inputs.makes.follows = "makesSrc";
    std.inputs.n2c.follows = "n2c";
    std.inputs.arion.follows = "arion";

    nuenv.url = "github:DeterminateSystems/nuenv";
    nuenv.inputs.nixpkgs.follows = "nixpkgs";

    microvm.url = "github:astro/microvm.nix";
    microvm.inputs.flake-utils.follows = "flake-utils";

    jupyenv.url = "github:tweag/jupyenv/?ref=refs/pull/524/head";
    jupyenv.inputs.flake-utils.follows = "flake-utils";
    jupyenv.inputs.flake-compat.follows = "";
    jupyenv.inputs.pre-commit-hooks.follows = "";

    system-manager.url = "github:numtide/system-manager";
    system-manager.inputs.flake-utils.follows = "flake-utils";
    system-manager.inputs.treefmt-nix.follows = "treefmt-nix";
    system-manager.inputs.pre-commit-hooks.follows = "";

    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  inputs = {
    organist.url = "github:nickel-lang/organist";
    organist.inputs.nixpkgs.follows = "nixpkgs";
    organist.inputs.flake-compat.follows = "";
    organist.inputs.flake-utils.follows = "flake-utils";

    nickel.url = "github:tweag/nickel";
    nickel.inputs.flake-utils.follows = "flake-utils";
    # nickel.inputs.pre-commit-hooks.follows = "";
    # nickel.follows = "organist/nickel";

    nil.url = "github:oxalica/nil";
    nil.inputs.nixpkgs.follows = "nixpkgs";
    nil.inputs.flake-utils.follows = "flake-utils";

    typst.url = "github:typst/typst";
    typst.inputs.nixpkgs.follows = "nixpkgs";
    typst.inputs.flake-parts.follows = "flake-parts";
    typst.inputs.systems.follows = "systems";
  };

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    nixos-hardware.url = "github:nixos/nixos-hardware";

    impermanence.url = "github:nix-community/impermanence";

    snapshotter.url = "github:pdtpartners/nix-snapshotter";
    snapshotter.inputs.nixpkgs.follows = "nixpkgs";
    snapshotter.inputs.flake-parts.follows = "flake-parts";
    snapshotter.inputs.flake-compat.follows = "";

    ragenix.url = "github:yaxitech/ragenix";
    ragenix.inputs.nixpkgs.follows = "nixpkgs";
    ragenix.inputs.agenix.follows = "agenix";
    ragenix.inputs.flake-utils.follows = "flake-utils";

    agenix.url = "github:ryantm/agenix";
    agenix.inputs.home-manager.follows = "home-manager";
    agenix.inputs.darwin.follows = "darwin";
    # agenix.inputs.nixpkgs.follows = "nixpkgs";

    sops-nix.url = "github:Mic92/sops-nix"; # sops-template
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";

    nixfmt.url = "github:NixOS/nixfmt";
    nixfmt.inputs.flake-utils.follows = "flake-utils";

    nix-std.url = "github:chessai/nix-std";

    bird-nix-lib.url = "github:spikespaz/bird-nix-lib";
    bird-nix-lib.flake = false;
  };

  inputs = {
    pogSrc.url = "github:jpetrucciani/pog";
    pogSrc.flake = false;

    nix-fast-build.url = "github:Mic92/nix-fast-build";
    nix-fast-build.inputs.nixpkgs.follows = "nixpkgs";
    nix-fast-build.inputs.flake-parts.follows = "flake-parts";
    nix-fast-build.inputs.treefmt-nix.follows = "treefmt-nix";

    navi-tldr-pages.url = "github:denisidoro/navi-tldr-pages";
    navi-tldr-pages.flake = false;

    catppuccin-foliate.url = "github:catppuccin/foliate";
    catppuccin-foliate.flake = false;
  };
  outputs = inputs: { inherit inputs; };
}
