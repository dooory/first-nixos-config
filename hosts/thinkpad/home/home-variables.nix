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
			hex = "#B06185";
		};
		secondary = rec {
			r = 235;
			g = 220;
			b = 179;
			rgb = "${toString r},${toString g},${toString b}";
			hex = "#EBDCB3";
		};
		teritary = rec {
			r = 83;
			g = 79;
			b = 72;
			rgb = "${toString r},${toString g},${toString b}";
			hex = "#534F48";
		};
		background = rec {
			r = 30;
			g = 33;
			b = 33;
			rgb = "${toString r},${toString g},${toString b}";
			hex = "#1E2121";
		};
	};
}
