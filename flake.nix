{ description = "Flake for office server machine";

    inputs = {
        nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-23.11";
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
        catppuccin.url = "github:catppuccin/nix";
    };

    outputs = inputs@{
        self,
        nixpkgs,
        nixpkgs-stable,
        catppuccin,
        home-manager,
        ...
    }:{ 
        nixosConfigurations = {
            "nebuchadnezzar" = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = {
                    inherit inputs;
                    pkgs-stable = import nixpkgs-stable {
                        system = "x86_64-linux";
                        config.allowUnfree = true;
                    };
                };
                modules = [
                    ./nebuchadnezzar
                    #agenix.nixosModules.default
                    catppuccin.nixosModules.catppuccin
                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.morpheus = { 
                            imports = [
                                ./home
                                catppuccin.homeManagerModules.catppuccin 
                            ];
                        };
                    }
                ];
            };
        };
    };
}