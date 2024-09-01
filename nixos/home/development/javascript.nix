{ pkgs, ... }:

{
	home.packages = with pkgs; [
		nodePackages.nodejs
		nodePackages.prettier
	];

	programs.bun = {
		enable = true;
		settings = {
			smol = true;
			telemetry = false;
		};
	};
}
