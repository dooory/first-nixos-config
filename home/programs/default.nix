{ lib, ... }:

{
	# imports = lib.filter 
	# 	# filter out default.nix file and include only .nix files
	# 	(n: lib.strings.hasSuffix ".nix" n && !lib.strings.hasInfix "default" n) 
	# 	# importing all files in current directory
	# 	(lib.filesystem.listFilesRecursive ./.);

	imports = [
		./git.nix
		./hyprland.nix
		./kitty.nix
		./nixcord.nix
		./tmux.nix
	];
}
