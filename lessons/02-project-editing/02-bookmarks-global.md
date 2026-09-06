Welcome to Campaign 2: Bookmarks. Local marks (a-z) only work inside the file you set them in — that's the "local" in local marks, from Move. Uppercase marks (A-Z) are global instead: set one anywhere and it can pull you across files to get back, not just around the current one.

Press mZ right here on this line — any capital letter works, Z's just an easy one to remember for "last spot." New move unlocked.

Now leave this file entirely: put the cursor on the line below and press gf.

../01-single-file-editing/01-move/01-left-right-up-down.md

Once you land there, press `Z — New combo unlocked: warped clean across files, straight back to the exact line you left in this one. Head back the same way you came: cursor on the line below, gf.

../../02-project-editing/02-bookmarks-global.md

Marks 0-9 are global too, but you never set them yourself — nvim keeps them automatically, one per file you've recently exited, `0 for the most recent, `1 the one before that, and so on. They only update when you actually quit a file (or nvim itself) and get saved to disk between sessions, so there's nothing to press right now — just remember that next time you close nvim and reopen it, `0 drops you right back in the last file you were editing, cursor and all.

:marks and :delmarks work the exact same way here as they did with lowercase marks back in Move — :marks lists uppercase and numbered marks right alongside the local ones, and :delmarks A clears one out. The custom dm shortcut from that lesson covers capitals too: dmZ deletes mark "Z" just like dma deleted "a".

Campaign cleared — Bookmarks is fully unlocked, local and global both: ma/`a and mA/`A to set and jump, :marks to list, :delmarks (or dma/dm!) to clear, d`a/y`a to combo marks with actions, and capital/numbered marks to jump across files. Next up, Campaign 3: Tabs. Cursor on the file below, gf to load it.

03-tabs/01-opening-and-closing.md
