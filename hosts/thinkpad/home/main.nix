{ pkgs, ... }:

{
	imports = [ 
		./programs
		./hypr
		../../../modules/dark-theme.nix
	];

	home.username = "dory";
	home.homeDirectory = "/home/dory";

	home.packages = with pkgs; [
		floorp
		pavucontrol
		spotify
		tealdeer
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
