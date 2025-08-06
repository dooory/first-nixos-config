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
		settings = {
			windowrule = [
				"suppressevent maximize, class:.*"
				"nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
			];
		};
	};

	home.packages = with pkgs; [
		playerctl
		pamixer
	];
}
