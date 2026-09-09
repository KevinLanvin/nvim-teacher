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

      -- Buffer's detected project root (LazyVim.root.get), not vim.fn.getcwd():
      -- nvim-dap's "${workspaceFolder}" and a bare getcwd() both resolve to
      -- nvim's global cwd, which is wrong whenever nvim was launched from a
      -- parent directory (e.g. this repo's root) and a file was opened from
      -- deeper inside without :cd-ing first — the nodemon binary path below
      -- would silently point at a node_modules that doesn't exist there.
      local function project_root()
        return LazyVim.root.get()
      end

      local function ask(prompt, default)
        local root = project_root()
        remembered[root] = remembered[root] or {}
        local value = vim.fn.input(prompt, remembered[root][prompt] or default)
        remembered[root][prompt] = value
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
        return next(env) ~= nil and env or nil
      end

      local live_reload_config = {
        type = "pwa-node",
        request = "launch",
        name = "Launch via nodemon + ts-node (live reload)",
        cwd = project_root,
        runtimeExecutable = function()
          return project_root() .. "/node_modules/.bin/nodemon"
        end,
        runtimeArgs = function()
          local root = project_root()
          local entry = ask("Entry file (relative to project root): ", "src/index.ts")
          return {
            "--watch",
            root,
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