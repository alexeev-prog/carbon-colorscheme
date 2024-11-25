vim.opt.number = true -- Включить нумерацию строк
vim.opt.relativenumber = false -- Нумерация строк относительно текущей
vim.g.did_load_filetypes = 1 -- Обработка файлов с учетом их типов
vim.opt.cmdheight = 0 -- Высота строки для отображения команд (В данном случае строка скрыта целиком и не отображает никакой информации)

--[[
Параметр определяет различные опции форматирования для NeoVim
Значение "q" указывает, что новые строки должны автоматически подстроится под используемый размер отступа в файле
Значение "r" указывает, что комментарии должны оставаться в пределах заданной ширины строки
Значение "n" указывает, что автоматическое форматирование не должно нарушать перечисления
Значение "1" указывает, что отступ должен быть использован, даже если только одна строка была отформатирована
--]]
vim.g.formatoptions = "qrn1"

vim.opt.showmode = false -- Показывать режимы работы NeoVim в строке состояния (false, так как строка состояния заменена на <lualine>)
vim.opt.updatetime = 100 -- Промежуток времени (в миллисекундах) для обновления внутренних данных NeoVim
vim.opt.signcolumn = "yes" -- Отображение информационных знаков в файле (используются для обозначения местоположения ошибок, предупреждений...)

-- Настройка отображения текста
vim.opt.scrolloff = 1 -- Кол-во строк, которые видны над и под текущей позицией курсора
vim.opt.wrap = true -- Включить перенос строк, игнорируя целостность слов
vim.opt.textwidth = 120 -- кол-во символов, после которых Neovim автоматически перейдёт на новую строку
vim.opt.linebreak = true -- Включить перенос строк, сохраняя целостность слов
vim.opt.wrap = true -- Включить перенос строк, игнорируя целостность слов
vim.opt.cursorline = true -- Отображать текущую строку визуально
vim.o.cursorcolumn = true
vim.wo.signcolumn = "yes"
vim.opt.colorcolumn = '+0'
vim.cmd [[autocmd BufNewFile,BufRead *.txt,*.md setlocal textwidth=0 wrapmargin=0 wrap linebreak nolist]]

--[[
Параметр добавляет возможность перемещать курсор за пределы существующего текста
Доступные параметры:
• block: Активирует данный функционал в <visual mode>
• insert: Активирует данный функционал в <insert mode>
• all: Активирует данный функционал в во всех режимах
--]]
vim.opt.virtualedit = "block"

vim.opt.undofile = false -- Возможность отменить изменения в файле после перезапуска NeoVim
vim.opt.shell = "/bin/fish" -- Командная оболочка для выполнения внешних команд в NeoVim
vim.opt.swapfile = false -- Параметр определяет, будут ли создаваться .swp файлы
vim.opt.encoding = "UTF-8" -- Кодировка для файлов по умолчанию

-- Настройка мыши
vim.opt.mouse = "a" -- Включить поддержку мыши
vim.opt.mousefocus = true -- Фокусировка (активация) окна при наведении на него мышью
vim.opt.mousehide = true -- Спрятать курсор мыши когда набираем текст

-- Настройка для разделения экрана
vim.opt.splitbelow = true -- Открывать новое окно внизу при горизонтальном разделении (по умолчанию сверху)
vim.opt.splitright = true -- Открывать новое окно справа при вертикальном разделении (по умолчанию слева)

vim.opt.clipboard = "unnamedplus" -- Настройка для использования системного буфера обмена
vim.api.nvim_set_keymap("x", "p", '"_dP', { noremap = true, silent = true }) -- отключить копирование замененного текста в <visual mode>
vim.opt.expandtab = true -- Ставить пробелы вместо <tab>
vim.opt.shiftwidth = 4 -- Кол-во пробелов для автоматической табуляции
vim.opt.tabstop = 4 -- Кол-во пробелов по нажатию <Tab>
vim.opt.softtabstop = 4 -- 4 пробела в символе <tab>
vim.opt.smartindent = true -- "Умный" автоматический отступ, основанный на синтаксисе языка программирования

vim.cmd("autocmd BufEnter * set fo-=c fo-=r fo-=o") -- Отключить автоматическое комментирование при переходе на следующую строку

-- Символы для отображения различных элементов интерфейса в NeoVim
vim.opt.fillchars = {
	vert = "│", -- Символ для отображения вертикальной линии, которая разделяет окна и панели
	fold = "⠀", -- Символ для отображения свернутых блоков кода
	eob = " ", --  Символ, который отображается в конце буфера (В данном случае подавляет символ тильды[~])
	diff = "░", -- Символ для отображения изменений в режиме сравнения
	msgsep = "‾", -- Символ для отображения разделителя между сообщениями в командной строке
	foldopen = "", -- Символ для отображения развернутого блока кода
	foldsep = "┇", -- Символ для отображения разделителя между свернутыми блоками кода
	foldclose = "", -- Символ для отображения свернутого блока кода (говорит о том, что его можно развернуть)
}

vim.cmd('filetype plugin on')

vim.opt.backup = fals
vim.history = 500

-- Табы и отступы
-- vim.o.tabstop = 4
-- vim.bo.tabstop = 4
-- vim.o.showtabline = 4
-- vim.o.softtabstop = 4
-- vim.o.shiftwidth = 4
-- vim.bo.shiftwidth = 4
-- vim.o.smartindent = true
-- vim.bo.smartindent = true
-- vim.o.autoindent = true
-- vim.bo.autoindent = true
-- vim.o.expandtab = true
-- vim.bo.expandtab = true

-- Оформление
vim.opt.termguicolors = true
vim.o.pumheight = 10 -- максимальное количество элементов в pop-up меню
vim.o.cmdheight = 1 -- Max items to show in command menu
vim.o.conceallevel = 0 -- For markdown like elements

-- vim.opt.list = true
-- vim.opt.listchars:append("eol:󱞣")
-- vim.opt.fillchars = { eob = " " }

vim.o.tabstop = 4
vim.o.shiftwidth = 4
