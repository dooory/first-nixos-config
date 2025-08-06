{
	imports = [
		./keybinds.nix
		./variables.nix
	];
	wayland.windowManager.hyprland = {
		enable = true;
		extraConfig = ''
			${builtins.readFile ./hyprland.conf}
		'';
	};
}
