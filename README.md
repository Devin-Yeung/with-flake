# with-flake

A project template: a Nix flake (built with [flake-parts](https://flake.parts)) that
provides a [devenv](https://devenv.sh) dev shell, pre-commit hooks, and a multi-arch CI.

## Use as a template

Create a new project from this repo:

```sh
nix flake init -t github:Devin-Yeung/with-flake
# or into a new directory
nix flake new my-project -t github:Devin-Yeung/with-flake
```

## Development

```sh
nix develop --no-pure-eval       # enter the dev shell
nix flake check --no-pure-eval   # run checks for the current system
nix flake show --no-pure-eval    # list outputs, including templates.default
```
