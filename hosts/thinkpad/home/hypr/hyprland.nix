{ pkgs, ... }:

{
	imports = [
		./keybinds.nix
		./variables.nix
		./appearance.nix
		./input.nix
	];

	wayland.windowManager.hyprland = {
		enable = true;
		extraConfig = ''
			${builtins.readFile ./hyprland.conf}
		'';
	};

	home.packages = with pkgs; [
		playerctl
		pamixer
	];
}
