local M = {}

M.switch_pair = function(n)
	local left = n
	local right = n + 10

	hl.dsp.focus({ workspace = tostring(left), monitor = "HDMI-A-1" })
	hl.dsp.focus({ workspace = tostring(right), monitor = "HDMI-A-3" })
end

return M
