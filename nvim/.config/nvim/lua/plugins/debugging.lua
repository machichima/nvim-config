return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap-python",
	},
	config = function()
		local dap = require("dap")
    local dapui = require("dapui")

    require('dap-python').setup()
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})

    vim.keymap.set('n', "<F5>", dap.continue, {})
    vim.keymap.set('n', "<F6>", dap.terminate, {})
    vim.keymap.set('n', "<F10>", dap.step_over, {})
    vim.keymap.set('n', "<F11>", dap.step_into, {})
    vim.keymap.set('n', "<F12>", dap.step_out, {})
    vim.keymap.set('n', "<Leader>dr", dap.repl.open, {})
    vim.keymap.set('n', "<Leader>dl", dap.run_last, {})
    vim.keymap.set({'n', 'v'}, "<Leader>dh",require('dap.ui.widgets').hover, {})
    vim.keymap.set({'n', 'v'}, "<Leader>dp",require('dap.ui.widgets').preview, {})

    vim.keymap.set('n', "<Leader>df", function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end, {})
    vim.keymap.set('n', "<Leader>ds", function()
      local widgets = require("dap.ui.widgets")
      widgets.centered_float(widgets.scopes)
    end, {})
  end,
}
