_: {
  vim.utility = {
    diffview-nvim.enable = true;

    motion = {
      precognition.enable = true;
    };

    images = {
      image-nvim = {
        enable = true;
        setupOpts = {
          backend = "kitty";
          editorOnlyRenderWhenFocused = true;
          integrations.markdown = {
            enable = true;
            clearInInsertMode = true;
            downloadRemoteImages = true;
          };
        };
      };
    };
  };
}
