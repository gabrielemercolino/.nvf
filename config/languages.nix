_: {
  vim.lsp.formatOnSave = true;

  vim.languages = {
    enableLSP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    nix = {
      enable = true;
      format.enable = true;
      format.type = "alejandra";
    };

    markdown = {
      enable = true;
      format.enable = true;
    };
  };
}
