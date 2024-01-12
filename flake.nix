{
  description = "StefanOS based on ZaneyOS";

  inputs = {
    nixpkgs.url ="nixpkgs/nixos-unstable";
    home-manager.url ="github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
    hostname = "nixos";
    username = "stefano";
    pkgs = import nixpkgs {
      inherit system;
      config = {
	  allowUnfree = true;
      };
    };
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
	    specialArgs = { inherit system; inherit inputs; inherit username; inherit hostname; };
	    modules = [ ./configuration.nix ];
      };
    };
          homeConfigurations = {
        stefano = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [./home.nix];
        };
      };
  };
}
