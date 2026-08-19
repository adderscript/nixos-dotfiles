{
  home.username = "alasdair";
  home.homeDirectory = "/home/alasdair";

  home.stateVersion = "26.11";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;

    userName = "Alasdair";
    userEmail = "alasdairthgray@gmail.com";

    settings = {
      init.defaultBranch = "main";
      core.editor = "nvim";
      pull.rebase = false;
    };
  };

  programs.bash = {
    enable = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles";
    };

    historySize = 10000;
    historyFileSize = 100000;

    initExtra = ''
      export EDITOR="nvim"
      eval "$(starship init bash)"
      fastfetch
    '';

    profileExtra = ''
      # Commands for login shells
    '';
  };
}
