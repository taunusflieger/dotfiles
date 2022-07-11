local Hydra = require("hydra")

Hydra({
  name = "Change / resize window",
  mode = { "n" },
  body = "<C-w>",
  config = {
    -- color = "pink",
  },
  heads = {
    -- move between windows
    { "<C-h>", "<C-w>h" },
    { "<C-j>", "<C-w>j" },
    { "<C-k>", "<C-w>k" },
    { "<C-l>", "<C-w>l" },

    -- resize windows
    { "H", "<C-w>3<" },
    { "L", "<C-w>3>" },
    { "K", "<C-w>2+" },
    { "J", "<C-w>2-" },

    -- equalize window size
    { "e", "C-w>=" },
    
    -- close active window
    { "Q", ":q<cr" },
    { "<C-q>", ":q<cr>" },

    -- exit this hydra
    { "q", nil, { exit = true, nowait = true }},
    { ";", nil, { exit = true, nowait = true }},
    { "<Esc>", nil, { exit = true, nowait = true }},
  },
})


