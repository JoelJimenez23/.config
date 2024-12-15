-- Función para mapear teclas
local function map(mode, key, command)
  vim.keymap.set(mode, key, command, { noremap = true, silent = true })
end

-- Configuración de mapeos para moverse entre ventanas
local maps = {
  map('n', '<C-H>', '<Cmd>lua require"tmux".move_left()<CR>') -- Moverse a la ventana izquierda
}

-- Devuelve los mapeos para que el archivo no quede vacío
return maps
