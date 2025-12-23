-- FIXME: don't use in SC projects for now, try first on better projects like fands
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
        -- run command to attach to debug
   --             1 POSTGRES_DB="test_assets" USER_MANAGER_ENABLED="no" PYTHONPATH="$(pwd)/src:$(pwd)" \
   -- 2 python -m debugpy --listen 0.0.0.0:5678 --wait-for-client tests/grpc/server.py
   -- 
  -- This command does the following:
  --  - Sets the necessary environment variables (POSTGRES_DB, USER_MANAGER_ENABLED, PYTHONPATH).
  --  - Starts the python debugger debugpy.
  --  - --listen 0.0.0.0:5678: Tells debugpy to listen for a debugger client connection on port 5678 on all available network interfaces.
  --  - --wait-for-client: Pauses the execution of your script until a debugger client attaches.
  --  - tests/grpc/server.py: The script to be executed.
  --
  -- You can then connect to this process from nvim-dap using a configuration like this in your launch.json or dap setup:

            -- table.insert(dap.configurations.python, {
            --     type = "debugpy",
            --     request = "launch",
            --     name = "Dubug Poetry Run",
            --     module = "poetry",
            --     args = { "run", "pytest" },
            -- })
            --     2   {
   --  3     type = 'python';
   --  4     request = 'attach';
   --  5     name = 'Attach to test server';
   --  6     connect = {
   --  7       host = '127.0.0.1';
   --  8       port = 5678;
   --  9     };
   -- 10     pathMappings = {
   -- 11       {
   -- 12         localRoot = '${workspaceFolder}';
   -- 13         remoteRoot = '.';
   -- 14       };
   -- 15     };
   -- 16   }
   -- 17 }
   --
   --     1 dap.configurations.python = {
   --  2   {
   --  3     type = 'python';
   --  4     request = 'launch';
   --  5     name = 'Launch test server';
   --  6     program = '${workspaceFolder}/tests/grpc/server.py';
   --  7     env = {
   --  8       POSTGRES_DB = 'test_assets';
   --  9       USER_MANAGER_ENABLED = 'no';
   -- 10       PYTHONPATH = '${workspaceFolder}/src:${workspaceFolder}';
   -- 11     };
   -- 12   }
   -- 13 }
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
