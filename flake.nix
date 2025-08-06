{
	description = "A simple NixOS flake";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

		import-tree.url = "github:vic/import-tree";

		nixvim = {
			url = "github:nix-community/nixvim/nixos-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixcord = {
			url = "github:kaylorben/nixcord";
		};

		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {
		self, 
		nixpkgs, 
		home-manager, 
		nixvim,
		nixcord,
		import-tree,
		... 
	} @inputs: {
		nixosConfigurations.thinkpad = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { 
					inherit inputs;
					import-tree = inputs.import-tree;
			};
			modules = [
				./hosts/thinkpad

				home-manager.nixosModules.home-manager
				{
					home-manager.sharedModules = [
							nixvim.homeManagerModules.nixvim 
							nixcord.homeModules.nixcord
					];
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;

					home-manager.users.dory = import ./home/home.nix;
				}
			];
		};
	};
}
