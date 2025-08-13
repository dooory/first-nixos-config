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
		};
	};
}
