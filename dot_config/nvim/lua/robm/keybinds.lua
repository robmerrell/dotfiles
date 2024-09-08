-- Base keybindings. Specific languages should define their own local keybindings.

-- I constantly press this by accident
vim.api.nvim_set_keymap("", "I", "<Nop>", { noremap = true, silent = true })

-- Which-Key

local wk = require("which-key")

wk.setup({
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 0, 0, 0, 0.75 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
    padding = { 1, 1, 1, 0 }, -- extra window padding [top, right, bottom, left]
    winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    zindex = 1000, -- positive value to position WhichKey above other floating windows.
  },
  layout = {
    height = { min = 4, max = 50 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 1, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
})

wk.register({
  a = {
    name = "AI",
    mode = { "n", "v" },
    p = { "<cmd>Copilot toggle<cr>", "Toggle Copilot" },
    -- a = { "<cmd>ChatGPTCompleteCode<cr>", "Complete Code" },
    -- c = { "<cmd>ChatGPT<cr>", "Chat" },
    -- d = { "<cmd>ChatGPTRun docstring<cr>", "Docstring" },
    -- e = { "<cmd>ChatGPTEditWithInstruction<cr>", "Edit With Instruction" },
    -- f = { "<cmd>ChatGPTRun fix_bugs<cr>", "Fix Bugs" },
    -- o = { "<cmd>ChatGPTRun optimize_code<cr>", "Optimize Code" },
    -- s = { "<cmd>ChatGPTRun summarize<cr>", "Summarize" },
    -- t = { "<cmd>ChatGPTRun add_tests<cr>", "Add Tests" },
    -- x = { "<cmd>ChatGPTRun explain_code<cr>", "Explain Code" },
  },
  b = {
    name = "Buffers",
    c = { "<cmd>enew<cr>", "New Empty Buffer" },
    k = { "<cmd>bdelete<cr>", "Kill Current Buffer" },
    n = { "<cmd>bnext<cr>", "Next Buffer" },
    p = { "<cmd>bprev<cr>", "Previous Buffer" },
    s = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
  },
  f = {
    name = "Files",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    j = { "<cmd>set filetype=json<cr>", "JSON Filetype" },
    o = { "<cmd>NvimTreeFindFile<cr>", "Open File In Tree" },
    t = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
    x = { "<cmd>set filetype=xml<cr>", "XML Filetype" },
  },
  h = { "<cmd>Telescope help_tags<cr>", "Help" },
  l = {
    name = "LSP/Code",
    e = { "<cmd>Trouble<cr>", "Diagnostics" },
    f = { "<cmd>Format<cr>", "Format" },
    d = { vim.lsp.buf.definition, "Go To Definition" },
    i = { vim.lsp.buf.implementation, "Go To Implementation" },
    k = { vim.lsp.buf.hover, "Documentation" },
    r = { vim.lsp.buf.references, "List References" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "List Symobls" },
  },
  n = { "<cmd>nohlsearch<cr>", "Remove Highlight" },
  p = { "<cmd>let @+=join([expand('%'), line('.')], ':')<cr>", "Copy File:Line" },
  r = {
    name = "Run",
    p = { "<cmd>:silent !rerun_tests<CR>", "Rerun Test" },
    s = { "<cmd>:silent !rerun_shell<CR>", "Rerun Shell" },
    r = { "<cmd>:silent !rerun_right<CR>", "Rerun Right" },
  },
  s = { "<cmd>Telescope live_grep<cr>", "Search" },
  t = {
    name = "Tabs",
    ["1"] = { "<cmd>tabn 1<cr>", "Tab 1" },
    ["2"] = { "<cmd>tabn 2<cr>", "Tab 2" },
    ["3"] = { "<cmd>tabn 3<cr>", "Tab 3" },
    ["4"] = { "<cmd>tabn 4<cr>", "Tab 4" },
    c = { "<cmd>tabnew<cr>", "Create Tab" },
    o = { "<cmd>tab split<cr>", "Open In New Tab" },
    p = { "<cmd>tabprevious<cr>", "←" },
    n = { "<cmd>tabnext<cr>", "→" },
    q = { "<cmd>tabclose<cr>", "Close Tab" },
  },
  v = {
    name = "Version Control",
    o = { "<cmd>OpenInGHFileLines<cr>", "Open in Github" },
  },
  w = {
    name = "Windows",
    ["1"] = { "<cmd>1wincmd w<cr>", "Window 1" },
    ["2"] = { "<cmd>2wincmd w<cr>", "Window 2" },
    ["3"] = { "<cmd>3wincmd w<cr>", "Window 3" },
    ["4"] = { "<cmd>4wincmd w<cr>", "Window 4" },
    h = { "<cmd>wincmd h<cr>", "←" },
    j = { "<cmd>wincmd j<cr>", "↓" },
    k = { "<cmd>wincmd k<cr>", "↑" },
    l = { "<cmd>wincmd l<cr>", "→" },
    q = { "<cmd>wincmd q<cr>", "Close Window" },
    s = { "<cmd>split<cr>", "Split Horizontal" },
    v = { "<cmd>vsplit<cr>", "Split Vertical" },
  },
}, { prefix = "<leader>" })

-- Surround
require("nvim-surround").setup({
  keymaps = {
    insert = false,
    insert_line = false,
    normal = false,
    normal_cur = false,
    normal_line = false,
    normal_cur_line = false,
    visual = false,
    visual_line = false,
    delete = "ds",
    change = "cs",
    change_line = false,
  },
})

-- Comments
require("Comment").setup({})

-- Leap
require("leap").create_default_mappings()
