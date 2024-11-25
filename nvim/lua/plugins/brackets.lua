return {
	"HiPhish/rainbow-delimiters.nvim",

	config = function()
		require('rainbow-delimiters.setup').setup {
    		-- Выбор цветов для окраски скобок
    		highlight = {
 		    	'RainbowDelimiterWhite',  -- Белый (исп. для одинарных скобок, остальные скобки окрашивают следующие цвета по очереди для их вложенности)
		        'RainbowDelimiterYellow', -- Жёлтый
		        'RainbowDelimiterBlue',   -- Синий
		        'RainbowDelimiterOrange', -- Оранжевый
		        'RainbowDelimiterGreen',  -- Зелёный
		        'RainbowDelimiterViolet', -- Фиолетовый
		        'RainbowDelimiterRed',    -- Красный
			},
		}
    end,
}
