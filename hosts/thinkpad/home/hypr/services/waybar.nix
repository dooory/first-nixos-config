let
	vars = import ../../home-variables.nix;
	theme = vars.theme;
in
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
					states = {
						warning = 30;
						critical = 10;
					};
				};
			};
		};

		style = ''
			* {
				font-family: "MesloLGM Nerd Font Propo";
				font-size: 14px;
			}

			window#waybar {
				background-color: rgba(${theme.background.rgb}, 0.7);
				color: rgb(${theme.secondary.rgb});

				border-bottom: 2px solid rgba(${theme.primary.rgb}, 0.9);
			}

			#workspaces {
				margin: 4px 0;
			}

			#workspaces button {
				color: rgb(${theme.secondary.rgb});

				padding: 0 5px;
				margin: 0 4px;
				border-radius: 0;
			}
		'';
	};
}
