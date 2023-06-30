local M = {}

local function create_callback(filer)
	return function()
		local path = vim.fn.expand('%:p')
		if not (vim.fn.isdirectory(path) == 1) then return end
		filer(path)
	end
end

M.setup = function(opts)
	local callback = create_callback(opts.filer)
	vim.api.nvim_create_autocmd({ "BufEnter" }, {
		callback = callback,
	})
end

return M
