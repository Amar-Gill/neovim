local options = require('rose-pine.config').options

local variants = {
	main = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#16141f',
		nc = '#16141f',
		base = '#191724',
		surface = '#1f1d2e',
		overlay = '#26233a',
		muted = '#6e6a86',
		subtle = '#908caa',
		text = '#e0def4',
		love = '#eb6f92',
		gold = '#f6c177',
		rose = '#ebbcba',
		pine = '#31748f',
		foam = '#9ccfd8',
		iris = '#c4a7e7',
		highlight_low = '#21202e',
		highlight_med = '#403d52',
		highlight_high = '#524f67',
		none = 'NONE',
	},
	test = {
		base = '#111018',
		surface = '#1f1d2e',
		overlay = '#26233a',
		muted = '#6e6a86',
		subtle = '#908caa',
		text = '#e0def4',
		love = '#ef527e',
		gold = '#f6c177',
		rose = '#fa9c98',
		pine = '#3fa1c8',
		foam = '#8bceda',
		iris = '#c4a7e7',
		highlight_low = '#21202e',
		highlight_med = '#403d52',
		highlight_high = '#524f67',
		none = 'NONE',
	},
	moon = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#1f1d30',
		nc = '#1f1d30',
		base = '#232136',
		surface = '#2a273f',
		overlay = '#393552',
		muted = '#6e6a86',
		subtle = '#908caa',
		text = '#e0def4',
		love = '#eb6f92',
		gold = '#f6c177',
		rose = '#ea9a97',
		pine = '#3e8fb0',
		foam = '#9ccfd8',
		iris = '#c4a7e7',
		highlight_low = '#2a283e',
		highlight_med = '#44415a',
		highlight_high = '#56526e',
		none = 'NONE',
	},
	dawn = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#f8f0e7',
		nc = '#f8f0e7',
		base = '#faf4ed',
		surface = '#fffaf3',
		overlay = '#f2e9e1',
		muted = '#9893a5',
		subtle = '#797593',
		text = '#575279',
		love = '#b4637a',
		gold = '#ea9d34',
		rose = '#d7827e',
		pine = '#286983',
		foam = '#56949f',
		iris = '#907aa9',
		highlight_low = '#f4ede8',
		highlight_med = '#dfdad9',
		highlight_high = '#cecacd',
		none = 'NONE',
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]

local palette = {}

local selected_variant = vim.g.rose_pine_variant

if vim.o.background == 'light' then
	palette = variants.dawn
else
	if selected_variant == 'moon' then
		palette = variants['moon']
	elseif selected_variant == 'test' then
		palette = variants['test']
	else
		palette = variants['main']
	end
end

return vim.o.background == 'light' and variants.dawn
	or variants[options.dark_variant or 'main']
