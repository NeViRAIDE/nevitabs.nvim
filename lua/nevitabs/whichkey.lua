local wk = require('which-key')
local i = require('stigmata.utils').icon

wk.register({
  ['<tab>'] = {
    function() require('nevitabs').tabuflineNext() end,
    'Goto to the next buffer',
  },
  ['<S-tab>'] = {
    function() require('nevitabs').tabuflinePrev() end,
    'Goto to the previous buffer',
  },
  ['<leader>t'] = { name = 'Tabs' .. i('t', 'tab-external', 1) },
  ['<leader>tc'] = {
    name = 'Close' .. i('', 'trash', 1),
    c = {
      '<cmd>tabclose<cr>',
      'Close current',
    },
    a = {
      '<cmd>tabonly<cr>',
      'Close all, except the current one',
    },
  },
  ['<leader>tp'] = {
    '<cmd>tabprevious<cr>',
    'Go to previous',
  },
  ['<leader>tn'] = {
    '<cmd>tabnext<cr>',
    'Go to next',
  },
  ['<leader>tN'] = {
    '<cmd>tabnew<cr>',
    'New',
  },
  ['<leader>tm'] = {
    name = 'Move',
    r = {
      '<cmd>+tabmove<cr>',
      'Move to the right',
    },
    l = {
      '<cmd>-tabmove<cr>',
      'Move to the left',
    },
  },
  ['<leader>tr'] = {
    function()
      local number_of_tabs = vim.fn.tabpagenr('$')
      if number_of_tabs > 1 then
        require('nevitabs.set_tab_name')()
      end
    end,
    'Rename',
  },
  ['<leader>tt'] = {
    function() require('nevitabs.modules.components').toggle_tabs() end,
    'Toggle tabs panel',
  },

  ['<leader>b'] = { name = 'Buffers' .. i('b', 'tmux', 1) },
  ['<leader>bd'] = {
    name = 'Delete' .. i('', 'trash', 1),
    c = {
      function() require('nevitabs').close_buffer() end,
      'Current',
    },
    a = {
      function() require('nevitabs').closeOtherBufs() end,
      'All, except current',
    },
    A = {
      function()
        require('nevitabs').closeAllBufs()
        require('nevitabs').close_buffer()
      end,
      'All',
    },
    l = {
      function() require('nevitabs').closeBufs_at_direction('left') end,
      'All to the left of the current one',
    },
    r = {
      function() require('nevitabs').closeBufs_at_direction('right') end,
      'All to the right of the current one',
    },
  },
  ['<leader>bm'] = {
    name = 'Move',
    l = {
      function() require('nevitabs').move_buf(-1) end,
      'Move to the left',
    },
    r = {
      function() require('nevitabs').move_buf(1) end,
      'Move to the right',
    },
  },
  ['<leader>bl'] = {
    '<cmd>Neotree buffers focus float toggle<cr>',
    'Toggle buffers list (Neotree)' .. i('', 'list-unordered', 1),
  },
  ['<leader>bn'] = {
    function() require('nevitabs').tabuflineNext() end,
    'Go to the next',
  },
  ['<leader>bp'] = {
    function() require('nevitabs').tabuflinePrev() end,
    'Go to the previous',
  },
})
