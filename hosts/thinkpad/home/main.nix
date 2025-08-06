{ pkgs, import-tree, ... }:

{
	imports = [ 
		./programs
		./hypr
	];

	home.username = "dory";
	home.homeDirectory = "/home/dory";

	home.packages = with pkgs; [
		floorp
		pavucontrol
		spotify
		tealdeer
		nerd-fonts.zed-mono
		nerd-fonts.meslo-lg
	];

	programs = {
		bash = {
			enable = true;
			enableCompletion = true;
			shellAliases = {
				nrs = "sudo nixos-rebuild switch --flake /home/dory/nix";
			};
		};
	};
	
	home.stateVersion = "25.05";
}
