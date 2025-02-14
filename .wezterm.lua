-- Pull in the wezterm API
local wezterm = require("wezterm")
local action = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

local UPPER_RIGHT_TRIANGLE = wezterm.nerdfonts.ple_upper_right_triangle
local LOWER_LEFT_TRIANGLE = wezterm.nerdfonts.ple_lower_left_triangle
local TAB_BAR_BG_COLOR = "#333333"
local INACTIVE_TAB_BG_COLOR = "#505050"
local INACTIVE_TAB_FG_COLOR = "#999999"
local TAB_HOVER_BG_COLOR = "#808080"
local TAB_HOVER_FG_COLOR = "#cccccc"
local ACTIVE_TAB_BG_COLOR = "#7f4a5a"
local ACTIVE_TAB_FG_COLOR = "#ffffff"
local CURSOR_COLOR = "#dddddd"

-- General
config.front_end = "WebGpu"
config.mouse_wheel_scrolls_tabs = false

-- Key bindings
config.keys = {
	-- delete the whole line
	{ mods = "CMD", key = "Backspace", action = action.SendKey({ mods = "CTRL", key = "u" }) },
}

-- Color scheme
config.color_scheme = "Gruvbox dark, medium (base16)"
config.colors = {
	tab_bar = {
		-- The color of the strip that goes along the top of the window
		-- (does not apply when fancy tab bar is in use)
		background = TAB_BAR_BG_COLOR,
	},
	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = CURSOR_COLOR,
	-- Overrides the text color when the current cell is occupied by the cursor
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = CURSOR_COLOR,
}

-- Font
config.font = wezterm.font("Fira Code", { weight = "DemiBold" })
config.font_size = 16
config.line_height = 1.2
config.cell_width = 1

-- Tab bar
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.tab_bar_at_bottom = true

-- This function returns the suggested title for a tab.
-- It prefers the title that was set via `tab:set_title()`
-- or `wezterm cli set-tab-title`, but falls back to the
-- title of the active pane in that tab.
local function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local background = INACTIVE_TAB_BG_COLOR
	local foreground = INACTIVE_TAB_FG_COLOR

	if tab.is_active then
		background = ACTIVE_TAB_BG_COLOR
		foreground = ACTIVE_TAB_FG_COLOR
	elseif hover then
		background = TAB_HOVER_BG_COLOR
		foreground = TAB_HOVER_FG_COLOR
	end

	local edge_foreground = background
	local tab_idx_from_1 = tab.tab_index + 1
	local title = tab_idx_from_1 .. ":" .. tab_title(tab)

	-- ensure that the titles fit in the available space,
	-- and that we have room for the edges.
	title = wezterm.truncate_right(title, max_width - 2)

	return {
		{ Background = { Color = TAB_BAR_BG_COLOR } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = UPPER_RIGHT_TRIANGLE },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Background = { Color = TAB_BAR_BG_COLOR } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = LOWER_LEFT_TRIANGLE },
	}
end)

local PLUS_TEXT = "+"
config.tab_bar_style = {
	new_tab = wezterm.format({
		{ Background = { Color = TAB_BAR_BG_COLOR } },
		{ Foreground = { Color = INACTIVE_TAB_BG_COLOR } },
		{ Text = UPPER_RIGHT_TRIANGLE },
		{ Background = { Color = INACTIVE_TAB_BG_COLOR } },
		{ Foreground = { Color = ACTIVE_TAB_FG_COLOR } },
		{ Text = PLUS_TEXT },
		{ Background = { Color = TAB_BAR_BG_COLOR } },
		{ Foreground = { Color = INACTIVE_TAB_BG_COLOR } },
		{ Text = LOWER_LEFT_TRIANGLE },
	}),
	new_tab_hover = wezterm.format({
		{ Background = { Color = TAB_BAR_BG_COLOR } },
		{ Foreground = { Color = INACTIVE_TAB_BG_COLOR } },
		{ Text = UPPER_RIGHT_TRIANGLE },
		{ Background = { Color = INACTIVE_TAB_BG_COLOR } },
		{ Foreground = { Color = ACTIVE_TAB_FG_COLOR } },
		{ Text = PLUS_TEXT },
		{ Background = { Color = TAB_BAR_BG_COLOR } },
		{ Foreground = { Color = INACTIVE_TAB_BG_COLOR } },
		{ Text = LOWER_LEFT_TRIANGLE },
	}),
}

-- Window
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 8
config.window_padding = {
	bottom = 8,
	top = 8,
	right = 8,
	left = 8,
}

-- Cursor
config.cursor_blink_rate = 600
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.default_cursor_style = "BlinkingBlock"

-- and finally, return the configuration to wezterm
return config
