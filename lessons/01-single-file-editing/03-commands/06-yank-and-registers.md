yy copies (yanks) this whole line. New move unlocked.

    paste it below this line
    paste it above this line

Cursor on the first line above, press p — that pastes what you just yanked right BELOW your cursor line. Move down to the second line and press P instead (capital) — this time it lands ABOVE. New move unlocked: p pastes after/below, P pastes before/above, same yanked text either way.

    a throwaway line, delete this one next

Delete the throwaway line above with dd, then press p — notice it pastes what you just DELETED, not what you yanked earlier. Delete and yank share the same default clipboard, called a register.

Now press "0p instead — that always pastes your last YANK specifically, no matter what you've deleted since. New combo unlocked: "0 explicitly picks a register before the action.

That " is doing real work: it lets you pick WHICH register an action reads from or writes to, by typing " then a register name right before the action, like the "0 you just used.

    oldest delete, gone first
    middle delete, gone second
    newest delete, gone third

Delete all three lines above with dd, one at a time, top to bottom. Now press "1p — that pastes back the newest delete, the third line. Press "2p somewhere else and you get the one before that instead, the second line. New combo unlocked: "1 through "9 are a rolling history of your last several deletes, "1 always the freshest, each new delete pushing the older ones down toward "9.

    keep me in register a
    keep me in register b

Cursor on the first line above, press "ayy — yanks it into register a specifically, the default register untouched. Cursor on the second line, press "byy the same way. Now press "ap on any line below to paste the first one back, then "bp on another line for the second — two different snippets, stashed side by side, neither one overwriting the other. New combo unlocked: "a through "z are yours to name yourself, for keeping several things around at once instead of just the latest one.

    junk line, delete this into the black hole

Cursor on the junk line above, press "\_dd — dd routed through "\_, the black hole register, instead of the default one. Now press p: instead of the junk line coming back, you get the line you yanked with yy earlier. New combo unlocked: "\_ swallows whatever you throw at it and keeps nothing, so a normal dd would've overwritten your yank with this junk, but routing it through "\_ let the delete happen without clobbering anything.

    yank this into your system clipboard

Cursor on that line above, press "+yy — same yank as always, just aimed at "+ instead of the default register. "+ is the real system clipboard, the one Ctrl+C/Ctrl+V (or your terminal's paste shortcut) reaches — switch to another app and paste, and that line is sitting there waiting.

"* looks like "+'s twin but it isn't: on Linux, "* is the PRIMARY selection — whatever text you last highlighted with your mouse, pasted with a middle-click — and it fills up on its own the instant you drag-select anything, no vim command involved. "+ only ever changes when you explicitly yank or delete into it, which is what makes it the one worth reaching for on purpose.

One more level before Commands is cleared. Cursor on the file below, gf to load it.

07-counted-motions.md
