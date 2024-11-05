local M = {}

M.base46 = {
  theme = "catppuccin",
}

M.ui = {
  statusline = {
    theme = "vscode_colored",
  },
  cmp = {
    style = "flat_dark",
  },
  telescope = {
    style = "borderless",
  },
  cheatsheet = {
    theme = "grid",
  },
  extended_integrations = {
    "trouble",
    "noice",
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.colorify = {
  enabled = true,
  mode = "virtual",
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
