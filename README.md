# dotfiles

Here is my dotfiles for my xixos machine.

## Enable flakes in nixos

Basically to anable flakes we need to add the following line to the /etc/configuration.nix:
`nix.settings.experimental-features = [ "nix-command" "flakes" ];`
Once done just rebuild the system for the modification to take affect:
`sudo nixos-rebuild switch`
From now we have acees to flakes commands
