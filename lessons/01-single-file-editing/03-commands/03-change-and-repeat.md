    fix just part of thisword

cw is like dw but drops you into insert mode right after deleting — cursor on the "w" in the middle of "thisword" above, press cw, type something new, then jk. New combo unlocked: notice it only changed from your cursor to the end of the word, "this" was left untouched.

    fix all of thisword too

ciw is the deeper cut: "inner word." It doesn't care where your cursor sits inside a word, it always grabs the WHOLE thing. Put your cursor back on the "w" in the middle of "thisword" above — same spot as before — press ciw, type something new, then jk. This time the entire word got replaced, not just the tail end. Same starting position, different result: that's the whole difference between cw and ciw.

    delete extra   word here

caw is the "around" version of ciw — same whole-word grab, but it eats one adjacent space too, so a straight delete doesn't leave a gap behind. Cursor on "extra" above, press caw, then jk right away without typing anything — "extra" and the space after it both vanish, leaving "word" sitting flush against "delete".

one two three four five

cw a word right here, jk, move to a different word on the same line, then press . — repeats your exact last combo instantly, no retyping required. New move unlocked: . is an instant replay button for whatever you just did.

Ready for the next level? Cursor on the file below, gf to load it.

04-text-object-combos.md
