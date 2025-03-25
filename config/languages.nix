{lib, ...}: let
  enableLanguages = langs:
    builtins.foldl' (
      acc: lang:
        acc // {"${lang}".enable = true;}
    ) {}
    langs;
in {
  vim.lsp = {
    formatOnSave = true;
    trouble.enable = true;
    lspSignature.enable = true;
  };

  vim.languages = lib.mkMerge [
    {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
    }
    (enableLanguages ["nix" "markdown" "clang" "python"])
    {
      nix.format.type = "alejandra";
    }
  ];
}
