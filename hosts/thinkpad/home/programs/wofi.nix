let
	theme = (import ../home-variables.nix).theme;
in
{
	programs.wofi = {
		enable = true;
		style = ''
			* {
				font-family: "MesloLGM Nerd Font Propo";
			}

			window, entry {
				background-color: rgba(${theme.background.rgb}, 0.9);
				color: ${theme.secondary.hex};
			}
		'';
	};
}
