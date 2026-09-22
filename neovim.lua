return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#12131c",
        dark_bg = "#0c0d14",
        darker_bg = "#07080c",
        lighter_bg = "#1e2030",

        fg = "#f2f0fa",
        dark_fg = "#7a748f",
        light_fg = "#d5d0e8",
        bright_fg = "#ffffff",
        muted = "#6e6788",

        red = "#ff5c6a",
        yellow = "#ffe566",
        orange = "#ff9f43",
        green = "#7dff9a",
        cyan = "#3de8ff",
        blue = "#5b8cff",
        magenta = "#ff4d9a",
        brown = "#c4785a",

        bright_red = "#ff8a94",
        bright_yellow = "#fff099",
        bright_green = "#a8ffc0",
        bright_cyan = "#7af0ff",
        bright_blue = "#8aadff",
        bright_magenta = "#ff7ab8",

        accent = "#ff4d9a",
        cursor = "#ffffff",
        foreground = "#f2f0fa",
        background = "#12131c",
        selection = "#2b2248",
        selection_foreground = "#ffffff",
        selection_background = "#2b2248",
      },
      on_highlights = function(hl, c)
        -- Keep the editing surface calm; put energy in syntax + accents
        hl.CursorLine = { bg = "#1a1c2a" }
        hl.CursorLineNr = { fg = c.accent, bold = true }
        hl.LineNr = { fg = c.dark_fg }
        hl.Visual = { bg = "#3a2f5c" }
        hl.Search = { bg = "#ffe566", fg = "#12131c", bold = true }
        hl.IncSearch = { bg = "#ff4d9a", fg = "#ffffff", bold = true }
        hl.MatchParen = { fg = "#3de8ff", bold = true, underline = true }

        hl.LspReferenceText = { bg = "#252838" }
        hl.LspReferenceRead = { bg = "#252838" }
        hl.LspReferenceWrite = { bg = "#2b2248" }
        hl.IlluminatedWordText = { bg = "#252838" }
        hl.IlluminatedWordRead = { bg = "#252838" }
        hl.IlluminatedWordWrite = { bg = "#2b2248" }

        -- Syntax that scans fast while coding
        hl.Comment = { fg = "#7a748f", italic = true }
        hl.String = { fg = c.green }
        hl.Function = { fg = c.blue, bold = true }
        hl.Type = { fg = c.yellow }
        hl.Constant = { fg = c.orange }
        hl.Number = { fg = c.orange }
        hl["@variable"] = { fg = c.fg }
        hl["@property"] = { fg = c.cyan }
        hl["@punctuation.bracket"] = { fg = c.magenta }

        local kw = { fg = c.magenta, bold = true }
        for _, g in ipairs({
          "Keyword",
          "Conditional",
          "Repeat",
          "Statement",
          "Include",
          "@keyword",
          "@keyword.function",
          "@keyword.return",
          "@keyword.conditional",
          "@keyword.repeat",
          "@keyword.import",
        }) do
          hl[g] = kw
        end

        hl.DiagnosticError = { fg = c.red }
        hl.DiagnosticWarn = { fg = c.yellow }
        hl.DiagnosticInfo = { fg = c.cyan }
        hl.DiagnosticHint = { fg = c.green }

        hl.StatusLine = { fg = c.fg, bg = "#0c0d14" }
        hl.WinSeparator = { fg = "#2b2248" }
        hl.TelescopeSelection = { bg = "#2b2248", fg = c.bright_fg, bold = true }
        hl.TelescopeMatching = { fg = c.accent, bold = true }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      pcall(function()
        require("aether.hotreload").setup()
      end)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
