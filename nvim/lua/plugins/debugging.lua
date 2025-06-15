-- TODO: Add and install debugpu from mason (see Dreams of Code video)
return {
    {
        "mfussenegger/nvim-dap",
        -- {'theHamsta/nvim-dap-virtual-text'},
        dependencies = {
            {"mfussenegger/nvim-dap-python", lazy = true },
            { "rcarriga/nvim-dap-ui", lazy = true, dependencies = { "nvim-neotest/nvim-nio" } }
        },
        lazy = true,
        config = function()
            require("dapui").setup()
            require("dap-python").setup()

            local dap, dapui = require("dap"), require("dapui")

            table.insert(dap.configurations.python, {
                type = "debugpy",
                request = "launch",
                name = "Dubug Poetry Run",
                module = "poetry",
                args = { "run", "pytest" },
            })
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
        end,
    },
    { 'theHamsta/nvim-dap-virtual-text', lazy = true },
}
