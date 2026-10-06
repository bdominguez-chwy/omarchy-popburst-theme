return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#141512",
        dark_bg = "#0e0f0d",
        darker_bg = "#090a08",
        lighter_bg = "#22241e",

        fg = "#ebe4d8",
        dark_fg = "#7a7268",
        light_fg = "#cfc6b8",
        bright_fg = "#f5f0e6",
        muted = "#7a7268",

        red = "#e07058",
        yellow = "#e0b84a",
        orange = "#d4782e",
        green = "#7a9a62",
        cyan = "#6a9a88",
        blue = "#6a8aaa",
        magenta = "#c87868",
        brown = "#94562b",

        bright_red = "#f09078",
        bright_yellow = "#ecd06a",
        bright_green = "#94b47a",
        bright_cyan = "#84b4a0",
        bright_blue = "#88a8c4",
        bright_magenta = "#d89888",

        accent = "#d4782e",
        cursor = "#f5f0e6",
        foreground = "#ebe4d8",
        background = "#141512",
        selection = "#2a241c",
        selection_foreground = "#f5f0e6",
        selection_background = "#2a241c",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#1c1e18" }
        hl.CursorLineNr = { fg = c.accent, bold = true }
        hl.LineNr = { fg = c.dark_fg }
        hl.Visual = { bg = "#3a3228" }
        hl.Search = { bg = "#e0b84a", fg = "#141512", bold = true }
        hl.IncSearch = { bg = "#d4782e", fg = "#141512", bold = true }
        hl.MatchParen = { fg = "#e0b84a", bold = true, underline = true }

        hl.LspReferenceText = { bg = "#22241e" }
        hl.LspReferenceRead = { bg = "#22241e" }
        hl.LspReferenceWrite = { bg = "#2a241c" }
        hl.IlluminatedWordText = { bg = "#22241e" }
        hl.IlluminatedWordRead = { bg = "#22241e" }
        hl.IlluminatedWordWrite = { bg = "#2a241c" }

        hl.Comment = { fg = "#7a7268", italic = true }
        hl.String = { fg = c.green }
        hl.Function = { fg = c.yellow, bold = true }
        hl.Type = { fg = c.orange }
        hl.Constant = { fg = c.orange }
        hl.Number = { fg = c.brown }
        hl["@variable"] = { fg = c.fg }
        hl["@property"] = { fg = c.cyan }
        hl["@punctuation.bracket"] = { fg = c.muted }

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

        hl.StatusLine = { fg = c.fg, bg = "#0e0f0d" }
        hl.WinSeparator = { fg = "#2a241c" }
        hl.TelescopeSelection = { bg = "#2a241c", fg = c.bright_fg, bold = true }
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
