{
      enable = true;

      diff-so-fancy.enable = true;
      lfs.enable = true;

      userName = "pragdave";
      userEmail = "dave@pragdave.me";

      extraConfig = {
        core = {
          editor = "nvim";
        };
      };
      ignores = [
        "*.swp"
        "2"
        "node_modules"
        ".DS_Store"
      ];
}
