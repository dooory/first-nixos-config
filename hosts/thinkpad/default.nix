# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
	imports =
		[
			./hardware-configuration.nix
			../../modules/core.nix
		];

	networking.hostName = "thinkpad"; # Define your hostname.

	users.users.dory = {
		isNormalUser = true;
		description = "dory";
		extraGroups = [ "networkmanager" "wheel" ];
	};

	services.getty.autologinUser = "dory";

	environment.systemPackages = with pkgs; [
		bluez
		bluez-tools
		acpi
	];

	programs = {
		hyprland.enable = true;
	};

	hardware.bluetooth = {
		enable = true;
		settings = {
			General = {
				Experimental = true;
			};
		};
	};

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
}
