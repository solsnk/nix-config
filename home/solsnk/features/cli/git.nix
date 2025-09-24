{
  programs = {
    git = {
      enable = true;
      lfs.enable = true;

      ignores = [
        "result"
        "*.swp"
        "*.qcow2"
      ];

      extraConfig = {
        init.defaultBranch = "main";
        pull.rebase = false;
        commit.gpgsign = true;
        gpg.format = "ssh";
        user.signingkey = "~/.ssh/id_ed25519.pub";
      };

      aliases = {
        s = "status";
        d = "diff";
        a = "add";
        c = "commit";
        p = "push";
        co = "checkout";
      };

      userEmail = "solsnk@proton.me";
      userName = "solsnk";
    };
  };
}
