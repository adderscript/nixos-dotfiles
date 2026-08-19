{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    ripgrep
    fd
    fzf
    statix

    nil
    nixfmt

    nodejs
  ];
}
