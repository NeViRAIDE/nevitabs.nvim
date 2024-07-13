local wk = require('which-key')
local i = require('stigmata.utils').icon

wk.add({
  {
    '<tab>',
    rhs = function() require('nevitabs').tabuflineNext() end,
    desc = 'Goto to the next buffer',
  },
  {
    '<S-tab>',
    rhs = function() require('nevitabs').tabuflinePrev() end,
    desc = 'Goto to the previous buffer',
  },
  { '<leader>t', group = 'Tabs', icon = i('t', 'tab-external') },
  { '<leader>tc', group = 'Close', icon = i('', 'trash') },
  {
    '<leader>tcc',
    '<cmd>tabclose<cr>',
    desc = 'Close current',
  },
  {
    '<leader>tca',
    '<cmd>tabonly<cr>',
    desc = 'Close all, except the current one',
  },
  {
    '<leader>tp',
    '<cmd>tabprevious<cr>',
    desc = 'Go to previous',
  },
  {
    '<leader>tn',
    '<cmd>tabnext<cr>',
    desc = 'Go to next',
  },
  {
    '<leader>tN',
    '<cmd>tabnew<cr>',
    desc = 'New',
  },
  { '<leader>tm', group = 'Move' },
  {
    '<leader>tmr',
    '<cmd>+tabmove<cr>',
    desc = 'Move to the right',
  },
  {
    '<leader>tml',
    '<cmd>-tabmove<cr>',
    desc = 'Move to the left',
  },
  {
    '<leader>tr',
    rhs = function()
      local number_of_tabs = vim.fn.tabpagenr('$')
      if number_of_tabs > 1 then require('nevitabs.set_tab_name')() end
    end,
    desc = 'Rename',
  },
  {
    '<leader>tt',
    rhs = function() require('nevitabs.modules.components').toggle_tabs() end,
    desc = 'Toggle tabs panel',
  },

  { '<leader>b', group = 'Buffers', icon = i('b', 'tmux') },
  { '<leader>bd', group = 'Delete', icon = i('', 'trash') },
  {
    '<leader>bdc',
    rhs = function() require('nevitabs').close_buffer() end,
    desc = 'Current',
  },
  {
    '<leader>bda',
    rhs = function() require('nevitabs').closeOtherBufs() end,
    desc = 'All, except current',
  },
  {
    '<leader>bdA',
    rhs = function()
      require('nevitabs').closeAllBufs()
      require('nevitabs').close_buffer()
    end,
    desc = 'All',
  },
  {
    '<leader>bdl',
    rhs = function() require('nevitabs').closeBufs_at_direction('left') end,
    desc = 'All to the left of the current one',
  },
  {
    '<leader>bdr',
    rhs = function() require('nevitabs').closeBufs_at_direction('right') end,
    desc = 'All to the right of the current one',
  },
  { '<leader>bm', group = 'Move' },
  {
    '<leader>bml',
    rhs = function() require('nevitabs').move_buf(-1) end,
    desc = 'Move to the left',
  },
  {
    '<leader>bmr',
    rhs = function() require('nevitabs').move_buf(1) end,
    desc = 'Move to the right',
  },
  {
    '<leader>bl',
    '<cmd>Neotree buffers focus float toggle<cr>',
    desc = 'Toggle buffers list (Neotree)',
    icon = i('', 'list-unordered'),
  },
  {
    '<leader>bn',
    rhs = function() require('nevitabs').tabuflineNext() end,
    desc = 'Go to the next',
  },
  {
    '<leader>bp',
    rhs = function() require('nevitabs').tabuflinePrev() end,
    desc = 'Go to the previous',
  },
})
