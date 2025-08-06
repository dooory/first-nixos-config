{
	config,
	lib,
	pkgs,
	...
}: {
	boot.loader = {
		efi = {
			canTouchEfiVariables = true;
		};
		grub.enable = true;
		grub.device = "nodev";
		grub.efiSupport = true;
	};

	networking.networkmanager.enable = true;

	nixpkgs.config.allowUnfree = true;

	time.timeZone = "Pacific/Auckland";

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

	environment.shells = with pkgs; [
		bash
	];

	users.defaultUserShell = pkgs.bash;

	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};

	security.polkit.enable = true;

	nix = {
		settings.experimental-features = [ "nix-command" "flakes" ];
	};
}
