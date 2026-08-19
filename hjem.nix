{ config, ... }:

let
  dotfiles = "/home/${config.users.users.alasdair.name}/nixos-dotfiles/config";
in
{
  hjem.users.alasdair = {
    enable = true;

    files = {
      ".config/starship.toml".source = "${dotfiles}/starship.toml";
    };

    xdg.config.files = {
      "niri".source = "${dotfiles}/niri";
      "alacritty".source = "${dotfiles}/alacritty";
      "waybar".source = "${dotfiles}/waybar";
      "fuzzel".source = "${dotfiles}/fuzzel";
      "nvim".source = "${dotfiles}/nvim";
      "fastfetch".source = "${dotfiles}/fastfetch";
    };
  };
}
