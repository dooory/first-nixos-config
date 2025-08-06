{
	"$browser" = "floorp";
	"$terminal" = "kitty";

	"$mod" = "SUPER";

	bind = [ 
		"$mod, A, exec, $browser"
	# 	"$mod, Return, exec, $terminal"
	# 	"$mod, D, exec, wofi --show drun"
	#
	# 	"$mod SHIFT, Q, killactive"
	# 	"$mod, F, fullscreen, 1"
	# 	"$mod SHIFT, F, fullscreen, 0"
	# 	"$mod, T, togglesplit"
	# 	"$mod, V, togglefloating"
	#
	# 	"$mod, M, exit"
	#
	# 	"$mod, H, movefocus, l"
	# 	"$mod, J, movefocus, d"
	# 	"$mod, K, movefocus, u"
	# 	"$mod, L, movefocus, r"
	#
	# 	"$mod SHIFT, H, movewindow, l"
	# 	"$mod SHIFT, J, movewindow, d"
	# 	"$mod SHIFT, K, movewindow, u"
	# 	"$mod SHIFT, L, movewindow, r"
	]
	# 	++ (
	# 		builtins.concatLists (builtins.genList (i:
	# 			let 
	# 				ws = i + 1;
	# 			in [
	# 				"$mod, code:1${toString i}, workspace, ${toString ws}"
	# 				"$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
	# 			]
	# 		)
	# 			9)
	# 	);
	# bindel = [
	# 	# Laptop multimedia keys for volume and LCD brightness
	# 	",XF86AudioRaiseVolume, exec, pamixer -i 5"
	# 	",XF86AudioLowerVolume, exec, pamixer -d 5"
	# 	",XF86AudioMute, exec, pamixer --get-default-sink -t"
	# 	",XF86AudioMicMute, exec, pamixer --default-source -t"
	# 	",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
	# 	",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
	# 	",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
	# 	",XF86AudioPause, exec, playerctl pause"
	# 	",XF86AudioPlay, exec, playerctl play"
	#
	# 	"$mod, bracketLeft, exec, playerctl previous"
	# 	"$mod, bracketRight, exec, playerctl pause-play"
	# 	"$mod, backSlash, exec, playerctl next"
	# ];
}
