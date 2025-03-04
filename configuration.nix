# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    curl
    openssl
  ];

  # wsl vscode连接必须下载
  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
