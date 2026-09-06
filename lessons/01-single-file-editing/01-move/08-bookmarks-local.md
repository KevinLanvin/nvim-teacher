Vim lets you drop your own named jump points instead of relying on gg/G or luck.

Some filler above this line.
TARGET sits right here.
More filler below this line.

Put the cursor on TARGET and press ma — that drops an invisible bookmark named "a", yours to jump back to whenever you want. New move unlocked.

Move the cursor anywhere else on the screen — scroll away from TARGET entirely if you like — then press `` `a ``. New combo of moves unlocked: warped straight back to TARGET.

Type :marks and hit Enter — a list pops up showing every mark you've got, "a" included, with the exact line and column it's parked at. New move unlocked. Close the list with any keypress.

Vim also drops a few marks for you automatically, no ma required: `` `. `` jumps to your last edit, `` `^ `` to wherever you last left insert mode, `` `[ `` and `` `] `` to the start and end of your last change or yank. Try it — press cw on TARGET to change the word to something else, drop back to normal mode, then press `` `[ `` — lands you right back at the start of that edit.

keep this line
delete everything starting from here
all the way down through here
this line survives

Marks combine with d and y like any other motion. Put the cursor on "delete everything starting from here" and press ma. Move down to "this line survives" and press `` d`a `` — New combo unlocked: that deletes from your cursor back to mark "a" in one shot, "keep this line" and "this line survives" left untouched. Undo that with u, then try `` y`a `` instead over the same range — yanks it rather than deleting.

Marks pile up, so you'll want to clear them out sometimes. The vanilla vim way is :delmarks a — command, mark name, done. This config adds a faster shortcut for the exact same thing: press dma directly in normal mode, no colon or Enter needed, and mark "a" is gone on the spot. That's custom to this setup, not stock vim. Drop a fresh ma somewhere, clear it with dma, then check :marks comes back empty.

One more custom shortcut worth knowing: :delmarks! is vanilla vim's bulk version — wipes every lowercase mark in the current file at once (uppercase and numbered marks are untouched — those live across files, a story for another campaign). This config's version is dm! — same bulk wipe, no colon needed.

Campaign cleared — Move is fully unlocked. Next up, Campaign 2: Write. Cursor on the file below, gf to load it.

../02-write/01-entering-insert.md
