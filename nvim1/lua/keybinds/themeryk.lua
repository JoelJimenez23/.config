local function map(m,k,v)
	vim.keymap.set(m,k,v, {silent = true})
end

local maps = {
	map('n','<F2>',":Themery<CR>")
}
return maps
