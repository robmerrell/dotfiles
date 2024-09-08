if vim.g.vscode then
	-- https://github.com/vscode-neovim/vscode-neovim/discussions/1614
	vim.cmd[[nnoremap <silent> <space> <cmd>lua require('vscode-neovim').call('whichkey.show')<cr>]]
	vim.opt.clipboard:append("unnamedplus")
    -- VSCode extension
else
    -- ordinary Neovim
end
