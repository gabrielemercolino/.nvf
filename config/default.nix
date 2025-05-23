_: {
  imports = [
    ./diagnostics.nix
    ./languages.nix
    ./mappings.nix
    ./settings.nix
    ./ui.nix
    ./utility.nix
    ./visuals.nix
  ];

  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
      transparent = false;
    };

    tabline.nvimBufferline.enable = true;

    statusline.lualine = {
      enable = true;
      theme = "catppuccin";
    };

    autocomplete.nvim-cmp.enable = true;
    autopairs.nvim-autopairs.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };

    filetree.neo-tree = {
      enable = true;
    };

    telescope.enable = true;

    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false; # throws an annoying debug message
    };

    dashboard = {
      dashboard-nvim.enable = true;
    };

    notify = {
      nvim-notify.enable = true;
    };

    notes.todo-comments.enable = true;

    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
    };
  };
}
