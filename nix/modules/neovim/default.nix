{ pkgs, inputs, ... }: {
	# programs.neovim = {
	# 	enable = true;
	# 	vimAlias = true;
	#	package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
	# };

	home.packages = with pkgs; [
		neovim
		tree-sitter
		gcc
		gnumake
		unzip
		luarocks
		nodejs_22
		lua
		wget
	];

	home.file."./.config/nvim/" = {
		source = ./nvim;
		recursive = true;
    };
}
