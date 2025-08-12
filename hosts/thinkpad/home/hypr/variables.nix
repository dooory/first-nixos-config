let
	vars = import ../home-variables.nix;
	theme = vars.theme;
in
{
	wayland.windowManager.hyprland = {
		settings = {
			"$mod" = "SUPER";
			"$terminal" = "kitty";
			"$launcher" = "wofi --show drun";
			"$browser" = "floorp";

			"$primary-color" = "rgb(${theme.primary.rgb})";
			"$secondary-color" = "rgb(${theme.secondary.rgb})";
			"$teritary-color" = "rgb(${theme.teritary.rgb})";
			"$background-color" = "rgb(${theme.background.rgb})";

			"$inactive-border" = "rgba(${theme.secondary.rgb},0.35)";
		};
	};
}
