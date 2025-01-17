{lib, ...}: let
  enableLanguages = langs:
    builtins.foldl' (
      acc: lang:
        acc // {"${lang}".enable = true;}
    ) {}
    langs;

  enableFormats = langs:
    builtins.foldl' (
      acc: lang:
        acc // {"${lang}".format.enable = true;}
    ) {}
    langs;
in {
  vim.lsp.formatOnSave = true;

  vim.languages = lib.mkMerge [
    {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
    }
    (enableLanguages ["nix" "markdown"])
    (enableFormats ["nix" "markdown"])
    {
      nix.format.type = "alejandra";
    }
  ];
}
