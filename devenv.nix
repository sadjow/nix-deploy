{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.git ];

  languages.rust.enable = true;

  processes.cargo-watch.exec = "cargo-watch";

  enterShell = ''
    git --version
  '';

  pre-commit.hooks.clippy.enable = true;
}
