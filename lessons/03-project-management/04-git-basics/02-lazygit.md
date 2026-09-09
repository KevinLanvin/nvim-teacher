Hunks let you work hunk-by-hunk. Lazygit gives you the full picture: staged files, unstaged files, the commit graph, remotes, all in one TUI. Let's open it.

Press <leader>gg. Lazygit opens as a floating terminal, rooted at the project's git root. The layout has three columns: files on the left (showing what's changed), a diff preview on the right, and the commit log below. If lazygit isn't installed, the terminal opens but says command not found — install it with your system package manager (e.g. apt install lazygit) and come back. New move unlocked.

Navigate the file list with j/k. Press <Space> on a file to stage it (the file moves from the "Unstaged" section to "Staged"). Press <Space> again to unstage it. This is the same as git add / git reset HEAD for individual files, but instant and visual.

Press c to start a commit. A text input opens at the bottom. Type your commit message and press <CR> to confirm. Lazygit creates the commit. If you want to abort instead, press <Esc>. Don't stress — you're in a lesson repo, not production. You can undo a commit with the u key when focused on the commit log.

The commit log is in the bottom panel. Press 2 to switch focus to it (or Tab to cycle between panels). Use j/k to navigate commits. Press <Enter> on a commit to see its full diff. Press <Esc> to go back up.

P (capital) pushes the current branch to the remote. Since this is a local lesson repo with no remote configured, it will fail with an error — that's expected. On a real project with a remote set up this is how you push without leaving nvim.

q closes lazygit and returns you to the editor exactly where you were. New move unlocked.

Cursor on the file below, gf to load the next level.

03-git-pickers.md
