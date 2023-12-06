# dotfiles

Here is my dotfiles for my xixos machine. The setup is taken from LibrePhoenix:

- [Flake](https://www.youtube.com/watch?v=ACybVzRvDhs&list=FLximN2Dc_dZcDTfC7BNaVUw&index=2&t=8s)
- [Home-manger stand alone configuration](https://www.youtube.com/watch?v=IiyBeR-Guqw&list=FLximN2Dc_dZcDTfC7BNaVUw&index=1)

## Enable flakes in nixos

Basically to anable flakes we need to add the following line to the /etc/configuration.nix:
`nix.settings.experimental-features = [ "nix-command" "flakes" ];`
Once done just rebuild the system for the modification to take affect:
`sudo nixos-rebuild switch`
From now we have acees to flakes commands and we can:

- update nix flake:
  `nix flake update`
- rebuild the system with the repository stated in flake.nix
  `sudo nixos-rebuild switch --flake .`

## Enable home-manager

For unstable channel excute theese commands (taken from home manager official manual):

- `nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager`
- `nix-channel --update`
  to update and pool the channel but for the actual installation run:
- `nix-shell '<home-manager>' -A install`
  If you recive an error like 'file home-manager was not found in the Nix search path' just log out and log in again and run the command again.

## integrate Home manager with flake in dotfile directory

insertehome menager in inputs and ouputs on flake.nix file

## Use home manger

Edit the file home .nix to configure your applications and configuration at user level. Than run the following command to sync the state of the system with the file: `home-manager switch --flake .`
