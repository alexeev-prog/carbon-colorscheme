vim.diagnostic.disable()
vim.loader.enable()

local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "matchparen",
  "tar",
  "tarPlugin",
  "rrhelper",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

vim.cmd [[
syntax sync minlines=256
set ttyfast
set lazyredraw
set updatetime=300
set synmaxcol=256
syntax sync minlines=256
set regexpengine=1
set hidden confirm
set switchbuf=useopen
]]

