{
  vim = {
    vimAlias = true;
    viAlias = true;

    spellcheck.enable = false;

    clipboard = {
      enable = true;
      registers = "unnamedplus";
      providers = {
        xclip.enable = true;
        wl-copy.enable = true;
      };
    };

    lineNumberMode = "relative";

    searchCase = "smart";

    undoFile.enable = true;

    options = {
      scrolloff = 8;

      tabstop = 2;

      shiftwidth = 2;

      wrap = true;

      splitbelow = true;
      splitright = true;

      termguicolors = true;

      cmdheight = 0;
    };
  };
}
