let
	vars = import ../home-variables.nix;
	theme = vars.theme;
	defaults = vars.defaults;
in
{
	wayland.windowManager.hyprland = {
		settings = {
			"$mod" = "SUPER";
			"$terminal" = defaults.terminal;
			"$launcher" = "wofi --show drun";
			"$browser" = defaults.browser;

			"$primary-color" = "rgb(${theme.primary.rgb})";
			"$secondary-color" = "rgb(${theme.secondary.rgb})";
			"$teritary-color" = "rgb(${theme.teritary.rgb})";
			"$background-color" = "rgb(${theme.background.rgb})";

			"$inactive-border" = "rgba(${theme.secondary.rgb},0.35)";
		};
	};
}
