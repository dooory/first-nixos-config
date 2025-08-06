{
	plugins.treesitter = {
		enable = true;
		nixvimInjections = true;

		settings = {
			highlight.enable = true;
			indent.enable = true;
		};
	};	

	plugins.treesitter-refactor.enable = true;

	plugins.hmts.enable = true;
}
