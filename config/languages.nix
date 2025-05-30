_: {
  vim.lsp = {
    enable = true;
    formatOnSave = true;
    lspSignature.enable = true;
  };

  vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    clang = {
      enable = true;
      cHeader = true;
    };
    go.enable = true;
    markdown = {
      enable = true;
      extensions.render-markdown-nvim.enable = true;
      format.type = "prettierd";
    };
    nix = {
      enable = true;
      format.type = "alejandra";
    };
    python.enable = true;
  };
}
