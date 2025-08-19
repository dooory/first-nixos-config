let
	theme = (import ../home-variables.nix).theme;
in
{
	programs.wofi = {
		enable = true;
		style = ''
			* {
				font-family: "MesloLGM Nerd Font Propo";
				border-radius: 0;
			}

			window, entry {
				background-color: rgba(${theme.background.rgb}, 0.9);
				border: 2px solid ${theme.secondary.hex};
			}

			#entry:selected {
				background-color: ${theme.primary.hex};
				border: 2px solid ${theme.primary.hex};
			}

			#text {
				color: ${theme.secondary.hex};
			}
		'';
	};
}
