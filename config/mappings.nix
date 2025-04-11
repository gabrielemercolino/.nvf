_: {
  vim = {
    keymaps = [
      {
        key = "<leader>e";
        mode = ["n"];
        action = ":Neotree toggle<CR>";
      }
    ];

    telescope.mappings = {
      findFiles = "<leader>ff";
      buffers = "<leader>fb";
      liveGrep = "<leader>fg";

      # git related
      gitBranches = "<leader>fGb";
      gitCommits = "<leader>fGc";

      # disabled
      findProjects = null;
      diagnostics = null;
      helpTags = null;
      gitBufferCommits = null;
      gitStash = null;
      gitStatus = null;
      lspDefinitions = null;
      lspDocumentSymbols = null;
      lspImplementations = null;
      lspReferences = null;
      lspTypeDefinitions = null;
      lspWorkspaceSymbols = null;
      open = null;
      resume = null;
      treesitter = null;
    };

    git = {
      # for some reason these 4 appear even if not enabled
      git-conflict.mappings = {
        both = null;
        none = null;
        ours = null;
        theirs = null;
      };

      gitsigns.mappings = {
        previewHunk = "<leader>gh";
        toggleBlame = "<leader>gb";

        blameLine = null;
        diffProject = null;
        diffThis = null;
        nextHunk = null;
        previousHunk = null;
        resetBuffer = null;
        resetHunk = null;
        stageBuffer = null;
        stageHunk = null;
        toggleDeleted = null;
        undoStageHunk = null;
      };
    };

    tabline.nvimBufferline.mappings = {
      closeCurrent = "<C-w>";
      cycleNext = "<C-Right>";
      cyclePrevious = "<C-Left>";
      moveNext = "<A-Right>";
      movePrevious = "<A-Left>";

      pick = null;
      sortByDirectory = null;
      sortByExtension = null;
      sortById = null;
    };

    notes.todo-comments.mappings = {
      telescope = "<leader>ft";
      quickFix = null;
      trouble = null;
    };

    lsp.mappings = {
      codeAction = "<leader>la";
      format = "<leader>lf";
      goToDeclaration = "<leader>lgtD";
      goToDefinition = "<leader>lgtd";
      goToType = "<leader>lgtt";
      hover = "<leader>lh";
      listImplementations = "<leader>lli";
      listReferences = "<leader>llr";
      openDiagnosticFloat = "<leader>le";
      renameSymbol = "<leader>lr";

      addWorkspaceFolder = null;
      documentHighlight = null;
      listDocumentSymbols = null;
      listWorkspaceFolders = null;
      listWorkspaceSymbols = null;
      nextDiagnostic = null;
      previousDiagnostic = null;
      removeWorkspaceFolder = null;
      signatureHelp = null;
      toggleFormatOnSave = null;
    };
  };
}
