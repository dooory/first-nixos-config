{ pkgs, ... }:

{
	imports = [
		./keybinds.nix
		./variables.nix
		./appearance.nix
		./input.nix

		./services
	];

	wayland.windowManager.hyprland = {
		enable = true;
		package = null;
		portalPackage = null;
		settings = {
			windowrule = [
				"suppressevent maximize, class:.*"
				"nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
				"workspace 4,class:discord|Discord|vesktop"
				"workspace 3,class:spotify|Spotify"
			];

			misc = {
				vfr = true;
				new_window_takes_over_fullscreen = 2;
			};

			xwayland = {
				force_zero_scaling = true;
			};
		};
	};

	home.packages = with pkgs; [
		playerctl
		pamixer
	];
}
