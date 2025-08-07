# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
	imports =
		[
			./hardware-configuration.nix
		];

	boot.loader.efi.canTouchEfiVariables = true;

	boot.loader.grub = {
		enable = true;
		device = "nodev";
		efiSupport = true;
	};

	networking.hostName = "thinkpad";
	networking.networkmanager.enable = true;

	time.timeZone = "Pacific/Auckland";

	i18n.defaultLocale = "en_NZ.UTF-8";

	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_NZ.UTF-8";
		LC_IDENTIFICATION = "en_NZ.UTF-8";
		LC_MEASUREMENT = "en_NZ.UTF-8";
		LC_MONETARY = "en_NZ.UTF-8";
		LC_NAME = "en_NZ.UTF-8";
		LC_NUMERIC = "en_NZ.UTF-8";
		LC_PAPER = "en_NZ.UTF-8";
		LC_TELEPHONE = "en_NZ.UTF-8";
		LC_TIME = "en_NZ.UTF-8";
	};

	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};

	users.users.dory = {
		isNormalUser = true;
		description = "dory";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [
		];
	};

	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs; [
		ripgrep
	];

	environment.sessionVariables.NIXOS_OZONE_WL = "1";

	programs.hyprland.enable = true;

	services.keyd = {
		enable = true;
		keyboards = { 
			default = {
				ids = [ "*"];
				settings = {
					main = {
						capslock = "overload(control, esc)";
						esc = "capslock";
					};
				};
			};
		};
	};

	system.stateVersion = "25.05";

	nix = {
		settings.experimental-features = [ "nix-command" "flakes" ];
	};
}
