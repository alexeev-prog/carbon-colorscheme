-- return {
-- 	"williamboman/mason.nvim",
-- 	dependencies = {
-- 		"williamboman/mason-lspconfig.nvim",
-- 		"WhoIsSethDaniel/mason-tool-installer.nvim",
-- 	},
-- 
-- 	config = function()
-- 		local mason = require("mason")
-- 		local mason_lspconfig = require("mason-lspconfig")
-- 		local mason_tool_installer = require("mason-tool-installer")
-- 		mason.setup({
-- 			ui = {
-- 				icons = {
-- 					package_installed = "✓",
-- 					package_pending = "➜",
-- 					package_uninstalled = "✗",
-- 				},
-- 				border = "double",
-- 				width = 0.8,
-- 				height = 0.8,
-- 			},
-- 		})
-- 
-- 		-- mason-lspconfig
-- 		mason_lspconfig.setup({
-- 			ensure_installed = {
-- 				"clangd",
-- 			},
-- 			-- auto installation
-- 			automatic_installation = true,
-- 		})
-- 
-- 		-- mason-tool-installer
-- 		mason_tool_installer.setup({
-- 			ensure_installed = {
-- 				{ "clangd" },
-- 				{ "clang-format" },
-- 			},
-- 
-- 			auto_update = true,
-- 			run_on_start = true,
-- 			start_delay = 3000, -- 3 second delay
-- 			debounce_hours = 5, -- at least 5 hours between attempts to install/update
-- 		})
-- 	end,
-- }

return {
    {
        "williamboman/mason.nvim",
        opts = {
            -- Настройка внешнего вида
            ui = {
                check_outdated_packages_on_open = true, -- Проверять автоматически наличие обновлений?
                border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, -- Рамка для окна
                width = 0.8, -- Ширина окна
                height = 0.8, -- Высота окна
                -- Иконки для различных состояний пакетов
                icons = {
                    package_installed = "✓", -- Пакет установлен
                    package_pending = "➜", -- Пакет устанавливается или ожидает установку
                    package_uninstalled = "✗", -- Пакет удален или не установлен
                },
            },
            -- Настройка сочетаний клавиш (представлены стандартные значения с переводом)
            keymaps = {
                        toggle_package_expand = "<CR>", -- Раскрыть пакет
                        install_package = "i", -- Установить пакет, на котором находится курсор
                        update_package = "u", -- Переустановить/обновить пакет, на котором находится курсор
                        check_package_version = "c",  -- Проверить наличие новой версии для пакета, на котором находится курсор
                        update_all_packages = "U", -- Обновить все установленные пакеты
                        check_outdated_packages = "C", -- Проверить наличие новой версии для всех установленных пакетов
                        uninstall_package = "X", -- Удалить пакет, на котором находится курсор
                        cancel_installation = "<C-c>", -- Отменить установку пакета, на котором находится курсор
                        apply_language_filter = "<C-f>", -- Применить языковую фильтрацию
                        toggle_package_install_log = "<CR>", -- Открыть/Закрыть журнал установки пакета, на котором находится курсор
                        toggle_help = "g?", -- Открыть меню помощи
            },
        },
    },

    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            -- Список языковых серверов для автоматической установки, если они ещё не установлены. Можно указывать конкретную версию, например, pyright@1.1.339
            ensure_installed = { "clangd", "pyright" },
            automatic_installation = true, -- Автоматическая установка
            handlers = nil,
        },
    },
}

