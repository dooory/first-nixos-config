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
				color: ${theme.secondary.hex};
			}

			window, entry {
				background-color: rgba(${theme.background.rgb}, 0.9);
				border: 2px solid ${theme.secondary.hex};
			}

			#entry:selected {
				outline: solid ${theme.secondary.hex};
				background-color: ${theme.primary.hex};
			}

			#input:focus {
				box-shadow: none;
			}
		'';
	};
}
