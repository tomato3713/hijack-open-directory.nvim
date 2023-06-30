local hijack_open_directory = {}

local function create_callback(filer)
	return function()
		local path = vim.fn.expand('%:p')
		if not (vim.fn.isdirectory(path) == 1) then return end
		filer(path)
	end
end

hijack_open_directory.setup = function(opts)
	local callback = create_callback(opts.filer)
	vim.api.nvim_create_autocmd({ "BufEnter" }, {
		callback = callback,
	})
end

return hijack_open_directory
