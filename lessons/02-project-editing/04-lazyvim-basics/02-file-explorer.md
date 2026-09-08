Press <leader>e — the Snacks file explorer opens as a panel on the left, rooted at your project directory. New move unlocked. Press <leader>e again to close it.

j and k navigate up and down the tree. l or Enter opens a file or expands a directory. h collapses the directory you're in. Standard vim direction keys, same as everywhere else.

<BS> goes up one directory — the tree's root moves to the parent, showing everything alongside where you started. New move unlocked. Handy any time the tree ends up rooted somewhere narrower than you want, like a subfolder an attached LSP client claimed as its own root.

. does the opposite: sets the root to whatever directory your cursor is on right now, drilling the tree down into just that folder. New move unlocked.

<C-s> opens the file under your cursor in a horizontal split instead, <C-v> in a vertical split — same split shortcuts as <leader>- and <leader>| from the splits level, without leaving the tree first. New move unlocked.

a adds a new file at the current position in the tree — a prompt asks for the name. End the name with / and it creates a directory instead. New move unlocked.

r renames the file or directory under the cursor — a prompt shows the current name, edit and confirm. New move unlocked.

m moves the file under the cursor — same prompt as r, but type a different directory in the path instead of just a new name and it relocates there rather than just renaming in place. New move unlocked. To move several at once: Tab-select each file first (Tab again to deselect), navigate to the destination directory, then press m there — it confirms before moving all of them in.

d deletes the file or directory under the cursor — asks for confirmation before going through with it. New move unlocked.

Ready for the next level? Cursor on the file below, gf to load it.

03-fuzzy-finding.md
