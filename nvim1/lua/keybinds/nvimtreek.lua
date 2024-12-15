local function map(m,k,v)
	vim.keymap.set(m,k,v, {silent = true})
end
--map(mode , key , value )

local maps = {
  map('n','<F3>',':NvimTreeToggle<CR>')
}


return maps