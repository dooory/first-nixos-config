{ import-tree, config, pkgs, ... }:

{
	imports = [
		./programs
		../modules/dark-mode.nix
		../modules/nixvim
		# ../modules/hyprland
	];

	home.username = "dory";
	home.homeDirectory = "/home/dory";

	home.packages = with pkgs; [
		floorp
		pavucontrol
		spotify
	];

	home.sessionVariables.NIXOS_OZONE_WL = "1";

	programs = {
		bash = {
			enable = true;
			enableCompletion = true;
			shellAliases = {
				nrs = "sudo nixos-rebuild switch --flake /home/dory/nix";
				svim = "sudo nvim";
			};
		};
	};

	home.stateVersion = "25.05";
}
