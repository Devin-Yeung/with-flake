{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    jujutsu
    jjui
  ];

  # https://devenv.sh/languages/
  languages.nix.enable = true;

  # https://devenv.sh/basics/
  enterShell = ''
    jj --version
  '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    jj --version | grep --color=auto "${pkgs.jujutsu.version}"
  '';

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    nixfmt.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
