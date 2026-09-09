Lazygit is the full TUI. These are the quick git lookups you do without leaving your current buffer.

<leader>gs opens the git status picker — a Snacks window listing every changed file in the repo, with a diff preview on the side. Navigate with j/k, filter by typing part of the filename. Press <CR> on a file to open it. Useful for a fast overview of what's dirty before a commit. New move unlocked.

<leader>gd opens the git diff picker — instead of listing files, it shows every individual hunk across the whole repo, one entry per changed chunk. Useful when you have changes scattered across many files and want to review them all in one pass without jumping between files manually.

<leader>ghb blame-annotates the current line — a popup appears showing who last touched this line, when, and with what commit message. The full commit hash is there if you need it. Moves on as soon as you press any key. New move unlocked.

<leader>ghB opens a full blame view for the entire buffer — every line annotated with its last commit, author, and date. Navigate with j/k. Useful for tracing which change introduced something. Press q to close. New move unlocked.

<leader>ghS stages the entire buffer (all hunks in the file at once). <leader>ghR resets the entire buffer, discarding every local change. Use these when you want to operate on the whole file instead of individual hunks. They're the file-level counterparts to <leader>ghs and <leader>ghr from the previous level.

Campaign cleared — Git is fully unlocked. Next up, Campaign 5: Claude Code. Cursor on the file below, gf to load it.

../05-claude-code/01-claude-code.md
