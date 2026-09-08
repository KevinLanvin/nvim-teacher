Press <leader>/ — the live grep picker opens, searching across every file in the project in real time as you type. Try it now: type quickfix and watch matches fill in from this file and the next one, since they both talk about it. Enter jumps to the match, <C-s>/<C-v> opens it in a split instead. New move unlocked.

<leader>sw greps for the exact word under your cursor without you having to type it — in visual mode it greps the selected text instead. Put your cursor on quickfix right here and try it now. New move unlocked: useful for finding all usages of a function or variable name across the project.

Results open the file at the matching line by default — but <C-q> sends every result (or just the ones you Tab-selected) to the quickfix list instead of jumping anywhere. New move unlocked. Try it on either search above: nothing visibly changes yet, but the list is loaded and waiting — the next level is all about reading it back.

Ready for the next level? Cursor on the file below, gf to load it.

05-quickfix.md
