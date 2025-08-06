{ import-tree, ... }:
{
	programs.nixvim = {
		imports = [
			./keymaps.nix
			./opts.nix
			./plugins
		];

		enable = true;
		vimAlias = true;

		globals.mapleader = " ";

		colorschemes.monokai-pro = {
			enable = true;
			settings = {
				transparent_background = false;
			};
		};
	};
}
