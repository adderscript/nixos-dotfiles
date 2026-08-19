{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # compilers
    gcc
    cargo
    odin
    dotnet-sdk_10
    nodejs
    go

    # ides
    godot
    opencode

    # libraries
    raylib
  ];
}
