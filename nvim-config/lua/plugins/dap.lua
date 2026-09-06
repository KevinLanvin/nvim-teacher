-- Generic "live reload" launch config for Node/TS backends: runs the entry
-- file through nodemon + ts-node instead of requiring a `tsc` build first.
-- Works across any project (no per-project launch.json needed) since the
-- entry file and extra env vars are asked for at launch time and remembered
-- per project (by cwd) for the rest of the session.
return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")

      local remembered = {}

      local function ask(prompt, default, completion)
        local cwd = vim.fn.getcwd()
        remembered[cwd] = remembered[cwd] or {}
        local value = vim.fn.input(prompt, remembered[cwd][prompt] or default, completion)
        remembered[cwd][prompt] = value
        return value
      end

      local function parse_env(raw)
        local env = {}
        for pair in raw:gmatch("[^,]+") do
          local k, v = pair:match("^%s*([%w_]+)%s*=%s*(.-)%s*$")
          if k then
            env[k] = v
          end
        end
        return env
      end

      local live_reload_config = {
        type = "pwa-node",
        request = "launch",
        name = "Launch via nodemon + ts-node (live reload)",
        cwd = "${workspaceFolder}",
        runtimeExecutable = "${workspaceFolder}/node_modules/.bin/nodemon",
        runtimeArgs = function()
          local entry = ask("Entry file (relative to project root): ", "src/index.ts", "file")
          return {
            "--watch",
            vim.fn.getcwd(),
            "--ext",
            "ts,json,js",
            "--exec",
            "node -r ts-node/register/transpile-only",
            entry,
          }
        end,
        env = function()
          local raw = ask("Extra env vars (KEY=VAL,KEY2=VAL2, empty = none): ", "")
          return parse_env(raw)
        end,
        restart = true,
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
        skipFiles = { "<node_internals>/**", "**/node_modules/**" },
      }

      for _, ft in ipairs({ "typescript", "javascript" }) do
        dap.configurations[ft] = dap.configurations[ft] or {}
        table.insert(dap.configurations[ft], live_reload_config)
      end
    end,
  },
}