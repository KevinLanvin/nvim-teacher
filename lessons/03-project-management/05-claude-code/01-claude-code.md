Welcome to Campaign 5: Claude Code. This config has the ai.claudecode extra enabled, which gives you a Claude Code pane docked inside nvim. The moves here let you drive it without leaving the editor.

<leader>ac toggles the Claude Code pane. Press it now — a terminal split opens running claude, and you're dropped into its interface. Press <leader>ac again to close it and come back. New move unlocked.

<leader>af focuses the Claude pane — if your cursor is elsewhere in the editor, this jumps you straight to the Claude window without toggling it closed and reopened. Try it: close the pane, open a file in another split, then press <leader>af. New move unlocked.

<leader>ar resumes a previous Claude session — instead of starting fresh, Claude continues the last conversation for the current directory. <leader>aC continues the most recent session globally regardless of directory. Use <leader>ar when you step away from a coding session and come back to pick up where Claude left off.

<leader>ab adds the current buffer to Claude's context. If you're looking at a specific file and want Claude to have that file's full content available, <leader>ab sends it over. Press it now while you're in this lesson file — Claude receives the whole thing.

In visual mode, <leader>as sends the selected text to Claude as a message. Select a chunk of code with V to line-select, then <leader>as to post it directly. Good for "what does this do" or "refactor this" without typing out a long description.

When Claude proposes a change and shows it as a diff inside nvim, <leader>aa accepts that diff and applies it to your file. <leader>ad denies it and discards the proposed change. New move unlocked.

The window navigation trick from Campaign 1 (Terminal) applies here directly. The Claude pane is a terminal split — from inside it, <C-h>, <C-j>, <C-k>, <C-l> jump straight to adjacent windows without manually escaping terminal mode. Useful when Claude is working on something and you want to quickly check the source file, then jump back to Claude's pane with <C-l> or <C-j>.

Campaign cleared — Claude Code is fully unlocked. Next up, Campaign 6: LSP Advanced. Cursor on the file below, gf to load it.

../06-lsp-advanced/01-rename-and-organize.md
