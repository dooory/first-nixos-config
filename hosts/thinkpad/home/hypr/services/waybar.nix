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

				modules-right = [
					"tray"
					"pulseaudio"
					"battery"
					"clock"
				];


				"hyprland/workspaces" = {
					persistent-workspaces = {
						"*" = [ 1 2 3 4 ];
					};
				};
				"hyprland/window" = {
					format = "{title}";
				};


			};
		};
	};
}
