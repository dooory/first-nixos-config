{
	programs.nixcord = {
		enable = true;
		vesktop.enable = true;
		config = {
			autoUpdate = false;
			plugins = {
				platformIndicators.enable = true;						
				lastFMRichPresence = {
					enable = true;
					username = "dooory";
					apiKey = "c0a2f27551939a7118c16be69d3a56da";
					useListeningStatus = true;
				};
			};
		};
	};
}
