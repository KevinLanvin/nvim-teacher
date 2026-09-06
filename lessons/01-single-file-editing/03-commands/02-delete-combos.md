    delete me with dd

Cursor on that line above, press dd — the whole line's gone, no confirmation, that's vim. This one's a special case: dd is d combined with itself, shorthand for "this whole line," not d + a movement.

This sentence is filler you can safely butcher — cursor on "filler", press dw to delete just that word. Same combo you drilled in the last level.

    keep this part, but not this part →

Cursor right where the arrow points on the line above, press d$ — one more rep of the to-end-of-line combo, so it's second nature going forward.

    trim up to the semicolon; keep the rest

d isn't limited to w or $ — any motion that lands you somewhere works with it. Cursor at the start of that line, press df; — f; is the find-char move from Move, and together they delete everything up to AND including that semicolon.

    trim up to the semicolon; keep the semicolon too

Same idea, one character short: cursor at the start of that line, press dt; — t stops one character before its target, so this time the semicolon survives and everything before it is gone.

One more delete combo: ``` d`` ``` deletes back to wherever you jumped from, same shape as `` d`a `` but targeting the automatic last-jump mark instead of one you named yourself. Cursor on the HOME line below to try it.

HOME — this is your anchor.

junk to delete, part one.

junk to delete, part two.

FAR SIDE — should survive the combo.

Type :19 and hit Enter to jump straight to FAR SIDE — that jump just set the `` ` `` mark back to HOME for you automatically.

Now press ``` d`` ``` — HOME and the junk lines vanish in one shot, FAR SIDE left standing since the mark only reaches back to where you jumped from. Undo with u to bring it all back.

Ready for the next level? Cursor on the file below, gf to load it.

03-change-and-repeat.md
