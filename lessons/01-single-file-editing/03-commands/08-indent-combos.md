indent me

New combo unlocked: > and < are actions too, just like d/c/y — instead of deleting or changing text, they shift it sideways by one indent step (this config's shiftwidth is 2 spaces). Cursor anywhere on the line above, press >> — >> is the doubled shorthand for "shift this whole line," the same pattern dd/cc/yy used for whole-line actions. Combo landed, the line jumps 2 spaces right.

  now put me back

<< reverses it, shifting left by that same one step. Cursor on the line above, press << — back to the left margin.

this paragraph
needs to move
right, all three
lines at once

> also pairs with a real movement, not just its own doubled shorthand — combine it with the ip text object from a few levels back. Cursor anywhere in the chunk above, press >ip — all four lines shift right together in one combo, no need to hit >> four times.

count line one
count line two
count line three

Counts still work here exactly like they did back in counted motions. Cursor on the line above, press 3>> — all three lines shift right at once, same trick as 3dd.

this line sits flush left
      this one has extra indent for no reason

One more indent action, a different shape from the rest: = doesn't shift by a fixed step, it reindents to wherever a line SHOULD sit based on what's around it. Cursor on the messy line above, press == — it snaps back level with its neighbor instead of just moving by 2 spaces. Handy for fixing indentation that's drifted, without guessing how far to shift it.

= is an operator too, so it pairs with any motion, not just its own doubled shorthand — and this config already taught you the two motions that bookend a whole file. Press gg to jump to the top, then =G to reindent from there all the way to the last line: gg=G, reindent the entire file in one combo. Try it now — watch "indent me" at the very top, the line you shifted with >> a few beats ago, snap back flush left. gg=G re-judges every line it touches from scratch, no exceptions, even ones you shifted on purpose.

Ready for the next level? Cursor on the file below, gf to load it.

09-comment-combos.md