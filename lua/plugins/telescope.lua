return {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim', {
        'nvim-telescope/telescope-fzf-native.nvim',

        build = 'make',

        cond = function()
            return vim.fn.executable 'make' == 1
        end
    }, { 'nvim-telescope/telescope-ui-select.nvim' },
        {
            'nvim-tree/nvim-web-devicons',
            enabled = vim.g.have_nerd_font
        } },
    config = function()
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>sf', builtin.find_files, {
        desc = '[S]earch [F]iles'
      })
      vim.keymap.set('n', '<C-p>', builtin.git_files, {
        desc = '[S]earch [G]it'
      })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, {
        desc = '[S]earch by [G]rep'
      })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, {
         desc = '[ ] Find existing buffers'
      })
    end
}
