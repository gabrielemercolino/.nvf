_: {
  vim.lsp = {
    formatOnSave = true;
    trouble.enable = true;
    lspSignature.enable = true;
  };

  vim.languages = {
    enableLSP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    clang = {
      enable = true;
      cHeader = true;
    };
    markdown.enable = true;
    nix = {
      enable = true;
      format.type = "alejandra";
    };
    python.enable = true;
  };
}
