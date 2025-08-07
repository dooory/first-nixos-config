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
			];

			misc = {
				vfr = true;
				new_window_takes_over_fullscreen = 2;
			};
		};
	};

	home.packages = with pkgs; [
		playerctl
		pamixer
	];
}
