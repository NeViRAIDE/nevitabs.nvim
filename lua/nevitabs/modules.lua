local component = require('nevitabs.modules.components')

require('nevitabs.modules.onclick')

---@return string
return function()
  local modules = {
    component.NeoTreeOverlay(),
    component.bufferlist(),
    component.datetime(),
    component.timer(),
    component.tablist(),
    component.buttons(),
  }
  return table.concat(modules)
end
