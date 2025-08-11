{
	programs.waybar = {
		enable = true;
		systemd.enable = true;

		settings = {
			mainBar = {
				layer = "top";
				modules-left = [
					"hyprland/workspaces" 
				];
				modules-center = [
					"hyprland/window"
				];
			};
		};
	};
}
