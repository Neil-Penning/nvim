-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/neilpenning/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?.lua;/Users/neilpenning/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?/init.lua;/Users/neilpenning/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?.lua;/Users/neilpenning/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/neilpenning/.cache/nvim/packer_hererocks/2.1.1716656478/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["dropbar.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fdropbar\frequire\0" },
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/dropbar.nvim",
    url = "https://github.com/Bekaboo/dropbar.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  melange = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/melange",
    url = "https://github.com/savq/melange"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/Neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\4\0005\4\3\0>\4\1\0035\4\4\0>\4\2\0035\4\5\0>\4\3\3=\3\a\2B\0\2\1K\0\1\0\15workspaces\1\0\1\15workspaces\0\1\0\2\tname\rpersonal\tpath&~/vaults/deck_hone_loop/personal/\1\0\2\tname\ftlaplus\tpath%~/vaults/deck_hone_loop/tlaplus/\1\0\2\tname\19deck_hone_loop\tpath\29~/vaults/deck_hone_loop/\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["precognition.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17precognition\frequire\0" },
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/precognition.nvim",
    url = "https://github.com/tris203/precognition.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tlaplus-nvim-plugin"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/tlaplus-nvim-plugin",
    url = "https://github.com/tlaplus-community/tlaplus-nvim-plugin"
  },
  ["unimpaired.nvim"] = {
    loaded = true,
    path = "/Users/neilpenning/.local/share/nvim/site/pack/packer/start/unimpaired.nvim",
    url = "https://github.com/tummetott/unimpaired.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: precognition.nvim
time([[Config for precognition.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17precognition\frequire\0", "config", "precognition.nvim")
time([[Config for precognition.nvim]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\4\0005\4\3\0>\4\1\0035\4\4\0>\4\2\0035\4\5\0>\4\3\3=\3\a\2B\0\2\1K\0\1\0\15workspaces\1\0\1\15workspaces\0\1\0\2\tname\rpersonal\tpath&~/vaults/deck_hone_loop/personal/\1\0\2\tname\ftlaplus\tpath%~/vaults/deck_hone_loop/tlaplus/\1\0\2\tname\19deck_hone_loop\tpath\29~/vaults/deck_hone_loop/\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)
-- Config for: dropbar.nvim
time([[Config for dropbar.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fdropbar\frequire\0", "config", "dropbar.nvim")
time([[Config for dropbar.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
