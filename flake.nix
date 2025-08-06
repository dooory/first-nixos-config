{
	description = "Custom NixOS Flake";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

		import-tree.url = "github:vic/import-tree";

		nixvim = {
			url = "github:nix-community/nixvim/";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {
		self,
		nixpkgs,
		nixvim,
		home-manager,
		... 
	} @inputs:

	{
		nixosConfigurations.thinkpad = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = {
				inherit inputs;
			};
			modules = [
				./hosts/thinkpad/configuration.nix

				home-manager.nixosModules.home-manager
				{
					home-manager.sharedModules = [
						nixvim.homeModules.nixvim
					];

					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;

					home-manager.users.dory = import ./hosts/thinkpad/home/main.nix;
				}
			];
		};
	};
}
