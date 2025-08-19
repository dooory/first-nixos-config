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

			window {
				background-color: rgba(${theme.background.rgb}, 0.7);
				color: ${theme.secondary.hex};
			}
		'';
	};
}
