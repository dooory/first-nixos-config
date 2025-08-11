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
				"hyprland/workspaces" = {
					persistent-workspaces = {
						"*" = [ 1 2 3 4 ];
					};
				};
			};
		};
	};
}
