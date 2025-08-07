{
	wayland.windowManager.hyprland = {
		settings = {
			animations.enabled = false;

			decoration = {
				shadow.enabled = false;
				blur.enabled = false;

				rounding = 4;
				rounding_power = 4.0;
			};

			misc.vfr = true;

			general = {
				"col.active_border" = "$primary-color";	
				"col.inactive_border" = "$inactive-border";

				gaps_in = 5;
				gaps_out = 10;
			};
		};
	};
}
