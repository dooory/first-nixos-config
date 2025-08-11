{
	programs.waybar = {
		enable = true;
		systemd.enable = true;

		settings = {
			mainBar = {
				layer = "top";
				spacing = 8;


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

				"pulseaudio" = {
					format = "{icon}";
					format-muted = "{icon}";
					format-icons = {
							"headphone" = "󰋋";
							"headphone-muted" = "󰟎";
							"default" = "";
							"default-muted" = "";
					};
				};

				"battery" = {
					format = "{capacity}% {icon}";
					format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
					full-at = 99;
				};
			};
		};

		style = ''
			* {
				font-family: "MesloLGM Nerd Font Propo";
				font-size: 14px;
				color: white;
			}

			window#waybar {
				background-color: rgba(0, 0, 0, 0.7);
			}
		'';
	};
}
