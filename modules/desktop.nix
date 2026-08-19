{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    wl-clipboard
    brightnessctl

    alacritty
    fuzzel
    waybar
    mako
    swaybg
    starship

    tor-browser
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  services.displayManager.ly.enable = true;
  services.xserver.enable = true;

  programs.niri.enable = true;
  programs.firefox.enable = true;
}
