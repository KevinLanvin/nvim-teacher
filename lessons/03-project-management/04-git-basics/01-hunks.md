Welcome to Campaign 4: Git. This config gives you two layers of git tooling: gitsigns for fast inline hunk operations, and lazygit for the full git UI. Start with hunks.

Gitsigns runs automatically whenever you open a file inside a git repo. It reads the diff against HEAD and marks every changed region in the gutter: `+` for added lines, `~` for modified lines, a small dash for deleted lines. You don't press anything — the marks are just there.

Make a change to this file to see it in action. Press o below to open a new line, type something, then jk to escape.

practice line — add some text here, then save

Save with :w. Gitsigns updates the gutter. You should see a + mark next to the new line. That marked region is a hunk — a contiguous chunk of changes. Now let's move between them.

]h jumps to the next hunk down. [h jumps to the previous hunk up. If you only made one change the cursor might not move far, so add a second line somewhere else in this file, save again, and try jumping between the two hunks with ]h and [h. New move unlocked.

With the cursor inside a hunk, press <leader>ghp. A popup opens showing the diff for that hunk inline — the before/after side by side, right in the buffer without opening a full split. Useful for a quick sanity check before committing. Press any key to close the popup. New move unlocked.

<leader>ghs stages just this hunk — not the whole file, just the lines in this chunk. Press it on one of your hunks. That chunk moves from "unstaged" to "staged" without touching the other changed lines in the file. <leader>ghu undoes that stage if you change your mind. New move unlocked.

<leader>ghr resets the hunk — discards the local changes in this chunk and restores the lines to what HEAD says. Try it on one of the hunks you didn't stage (careful: this throws away those changes). New move unlocked.

<leader>ghd opens a full diff split for the entire file — current version on the left, HEAD on the right. Use it when you want the complete picture rather than hunk-by-hunk. Close with :q on the diff window. New move unlocked.

Cursor on the file below, gf to load the next level.

02-lazygit.md
