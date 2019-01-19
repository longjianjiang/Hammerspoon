local hotkey = require "hs.hotkey"
local mouse = require "hs.mouse"
local app = require "hs.application"
local tap = require "hs.eventtap"

local mouse_move_value = 5

function moveMouseToYouDao()
    youdaoApp = app.frontmostApplication()
    win = youdaoApp:allWindows()[1]
    top_left = win:topLeft()
    top_left.x = top_left.x + 250
    top_left.y = top_left.y + 150
    tap.leftClick(top_left) 
end

-- shortcut

hs.hotkey.bind({"ctrl"}, "S", function()
	moveMouseToYouDao()
end)

hs.hotkey.bind({"ctrl"}, "T", function()
	p = hs.mouse.getAbsolutePosition()
	p.y = p.y - mouse_move_value
	hs.mouse.setAbsolutePosition(p)
end)

hs.hotkey.bind({"ctrl"}, "B", function()
	p = hs.mouse.getAbsolutePosition()
	p.y = p.y + mouse_move_value
	hs.mouse.setAbsolutePosition(p)
end)

hs.hotkey.bind({"ctrl"}, "L", function()
	p = hs.mouse.getAbsolutePosition()
	p.x = p.x - mouse_move_value
	hs.mouse.setAbsolutePosition(p)
end)

hs.hotkey.bind({"ctrl"}, "R", function()
	p = hs.mouse.getAbsolutePosition()
	p.x = p.x + mouse_move_value
	hs.mouse.setAbsolutePosition(p)
end)

hs.hotkey.bind({"ctrl"}, "C", function()
    p = hs.mouse.getAbsolutePosition()
    tap.leftClick(p)
end)