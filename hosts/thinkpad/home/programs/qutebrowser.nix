let
	theme = (import ../home-variables.nix).theme;
in
{
	programs.qutebrowser = {
		enable = true;

		searchEngines = {
			DEFAULT = "https://www.google.com/search?q={}";
			gh = "https://www.github.com/search?q={}";
			yt = "https://www.youtube.com/results?search_query={}";
			mn = "https://www.mynixos.com/search?q={}";
			nw = "https://nixos.wiki/index.php?search={}";
		};
	
		quickmarks = {
			qsettings = "https://qutebrowser.org/doc/help/settings.html";
			configrepo = "https://github.com/dooory/nix-config";
		};

		keyBindings = {
			normal = {
				"<shift-l>" = "tab-next";
				"<shift-h>" = "tab-prev";
				"<shift-k>" = "forward";
				"<shift-j>" = "back";
			};
		};

		settings = {
			auto_save.session = true;

			colors = {
				hints = {
					fg = theme.secondary.hex;
					bg = theme.teritary.hex;
				};

				webpage = {
					darkmode = {
						enabled = true;
						algorithm = "lightness-cielab";
						policy.images = "never";
					};
				};
			};
		};
	};
}
