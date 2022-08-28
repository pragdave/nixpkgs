{ config, pkgs, ... }:
let
  defaultPkgs = with pkgs; [
    exa     # ls
    fd      # find
    ripgrep # grep
    tree    # dir listing
  ];

  gitPkgs = with pkgs.gitAndTools; [
    diff-so-fancy
  ];

  languagePackages = with pkgs; [
    bun
    /* deno */
    elixir
    erlang
    nodejs-18_x
    python38
    ruby_3_1
  ];

  mediaPkgs = with pkgs; [
    imagemagick
    ffmpeg
  ];

in
{
  nixpkgs.config.allowUnfree = true;
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      keep-outputs = true
      keep-derivations = true
      auto-optimise-store = true
      builders-use-substitutes = true
      experimental-features = nix-command flakes
      '';
  };


  home = {
    username      = "dave";
    homeDirectory = "/Users/dave";
    stateVersion  = "22.05";

    packages      = defaultPkgs ++ gitPkgs ++ languagePackages ++ mediaPkgs;

    file = {
      ".config/nvim" = {
        recursive = true;
        source = ./config/nvim;
      };
    };

    sessionVariables = {
      THIS_IS_THE_REAL_ME = "dave";
      EDITOR = "nvim";
      CLICOLOR = "1";
      LSCOLORS = "gx";
      EXA_COLORS = import ./config/exa.nix;
      PAGER = "less";
      LANG = "en_US.UTF-8";
      BAT_THEME = "TwoDark";
      ERL_AFLAGS = "-kernel shell_history enabled";
    };

    sessionPath = [
      "$HOME/bin"
    ];

    shellAliases = {
      n = "nvim";
    };
  };

  programs = {
    bat.enable = true;
    home-manager.enable = true;

    fish   = import ./config/fish.nix { pkgs=pkgs;};
    fzf    = import ./config/fzf.nix;
    git    = import ./config/git.nix;
    kitty  = import ./config/kitty.nix { pkgs = pkgs; };
    neovim = import ./config/neovim.nix;
    ssh    = import ./config/ssh.nix;
  };
}
