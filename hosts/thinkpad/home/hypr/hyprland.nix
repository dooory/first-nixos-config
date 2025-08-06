{
	imports = [
		./keybinds.conf
		./variables.conf
	];
	wayland.windowManager.hyprland = {
		enable = true;
		extraConfig = ''
			${builtins.readFile ./hyprland.conf}
		'';
	};
}
