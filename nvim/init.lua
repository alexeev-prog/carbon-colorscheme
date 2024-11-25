-- Базовая настройка
require("core.mappings")
require("core.ru_mappings")
require("core.plugins")
require("core.config")
require("core.utils")
require("core.autocmd")
require("core.postconfig")

-- В данном файле инициализации происходит подключение файлов конфигурации
-- Также стоит отметить, что добавлять расширение .lua для файла и папку lua не нужно, так как NeoVim понимает это автоматически
-- Важно, что вместо require("папка.файл") можно использовать require("папка/файл") если вам так удобнее

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smartindent = true
