{
	defaults = {
		browser = "qutebrowser";
		terminal = "kitty";
	};

	# rec is needed at the beginning of an attribute set to allow its children to reference each other
	theme = {
		primary = rec {
			r = 176;
			g = 97;
			b = 133;
			rgb = "${toString r},${toString g},${toString b}";
		};
		secondary = rec {
			r = 235;
			g = 220;
			b = 179;
			rgb = "${toString r},${toString g},${toString b}";
		};
		teritary = rec {
			r = 83;
			g = 79;
			b = 72;
			rgb = "${toString r},${toString g},${toString b}";
		};
		background = rec {
			r = 30;
			g = 33;
			b = 33;
			rgb = "${toString r},${toString g},${toString b}";
		};
	};
}
