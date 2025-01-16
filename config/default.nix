{
  imports = [
    ./keymaps.nix
    ./languages.nix
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

    statusline.lualine = {
      enable = true;
      theme = "catppuccin";
    };

    autopairs.nvim-autopairs.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
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
      dashboard-nvim.enable = false;
      alpha.enable = true;
    };

    notify = {
      nvim-notify.enable = true;
    };

    projects = {
      project-nvim.enable = true;
    };

    notes.todo-comments.enable = true;

    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
    };
  };
}
