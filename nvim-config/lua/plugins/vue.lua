return {
  -- the vue extra pulls in vue + css parsers, but not ts/tsx, which
  -- are needed for highlighting <script lang="ts"> blocks inside .vue files
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "typescript", "tsx" } },
  },
}