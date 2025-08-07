{ config, pkgs, ... }:

{
	programs.tmux = {
		enable = true;

		# set prefix key to "Ctrl-a"
		prefix = "C-a";

		# enables mouse support
		mouse = true;

		# removes delay for escape key
		escapeTime = 0;

		# loads tmux-sensible at top of config
		sensibleOnTop = true;
		extraConfig = ''
			# reload config with r key
			bind r source-file ~/.config/tmux/tmux.conf

			# switch panes using Alt-H/J/K/L without prefix
			bind -n M-h select-pane -L
			bind -n M-l select-pane -R
			bind -n M-j select-pane -U
			bind -n M-k select-pane -D

			# switch windows using Alt-Shift-H/L
			bind -n M-H select-window -p
			bind -n M-L select-window -n

			# split window horizontally with vertical bar key
			bind "|" split-window -h
			# split window vertically with dash key
			bind "-" split-window -v
			# toggle fullscreen panes with Space
			bind Space resize-pane -Z

			# start window index numbers at 1 instead of 0
			set -g base-index 1

			# start pane index numbers at 1 instead of 0
			set -g pane-base-index 1
		'';
	};
}
