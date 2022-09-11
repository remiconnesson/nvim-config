vim.g.lightline = {
    colorscheme = 'nord',
	active = {
		left = {
			{ 'mode', 'past' },
			{ 'gitbranch', 'filename', 'modified' }
		}
	},
	component_function = {
		gitbranch = 'fugitive#head'
	}
}
