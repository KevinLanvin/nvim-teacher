Welcome to Act 2: Project Editing — and to Campaign 1: Buffers and Splits. Single-file editing is fully unlocked. From here on, everything spans multiple files.

A buffer is vim's in-memory file slot. Every file you open lives in a buffer — not in a tab, not in a window, in a buffer. The bufferline at the top of the screen (always visible in this config even with one file open) shows what's loaded.

You got here by pressing gf on the previous level's path. gf loads the target file into a buffer, but the file you came from stays in memory — it's still a buffer, just not the visible one. Check the bufferline: you should see at least two files listed there.

Press H to jump back to the previous buffer. New move unlocked. Press L to go forward again. H and L are the quick way to cycle through all open buffers — LazyVim remaps them in normal mode specifically for this. Note: in visual mode H and L still do the stock vim thing (jump to top or bottom of the screen), so that's expected behavior, not a quirk.

<leader>bb flips to the alternate buffer — the last one you were looking at before the current one. Useful for bouncing between exactly two files without cycling through everything. New move unlocked.

<leader>bd closes the current buffer without collapsing your window layout. If you have a split open and run a raw :bd, the split would close with it — <leader>bd is the smarter version that loads another buffer into the window instead. New move unlocked. (<leader>bD does the raw version if you ever want to close the buffer and its window together.)

<leader>bj triggers buffer pick — each buffer tab in the bufferline gets labeled with a letter, and pressing that letter jumps straight to it. New move unlocked. Faster than H/L cycling when you have many buffers open and know exactly which one you want.

<leader>, opens the buffer picker instead — a searchable list of every open buffer, fuzzy-filterable by name. New move unlocked. Same idea as <leader>bj, but for when you know part of the filename rather than wanting to scan letters.

Three bulk-close shortcuts round out the set: <leader>bo closes every buffer except the one you're in — useful after a deep dive into several files you no longer need. <leader>bi closes only the invisible ones, those not currently shown in any window. <leader>bA closes all buffers entirely — a custom shortcut in this config, not a LazyVim default. New move unlocked.

Ready for the next level? Cursor on the file below, gf to load it.

02-splits.md
