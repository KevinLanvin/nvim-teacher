Here's a line to aim at: (apple, banana, cherry, date)

Press f( on it — lands you exactly on that opening paren. New move unlocked: f finds a character forward, on the line, and jumps you right onto it, same as vanilla vim always did.

Notice the show that came with it: the screen dimmed and every "(" nearby lit up before you landed. That's this config's flash.nvim dressing up f (and F/t/T) with a highlighted preview of every match — it doesn't change what f does, just how loudly it shows its work.

Here's the part that actually trips people up. Cursor on the line below, then press f! — that "!" isn't anywhere near you, on this line or the next.

nothing to grab on this line

still nothing worth finding here either

but a lonely ! finally shows up right here — and then the fun continues: surprise! another! and one more!

f! just leapt clean over two whole lines to land on that lonely "!". Vanilla f never left the current line — this config's version searches the whole file, so don't assume your target has to be nearby.

Press f again — same key, no argument needed — and it hops to the next "!", the one right after "surprise". New combo unlocked: repeating a flash jump means pressing the letter you started with, again.

Press f once more — on to the "!" after the first "another". Then press F — capital, the flipped case of what you started with — and watch it step back one match instead, landing you back on "surprise!"'s "!".

f has three teammates for this level: t stops one character BEFORE your target instead of landing on it. Press gg to hop back to the very first line, then try t) there — lands you right before the closing paren.

F and T are the backward versions of f and t, and they get the same reach. Press G to jump to the bottom of this file, then try F( — there's no "(" anywhere down here, so watch it search all the way back up through every line above until it finds the one on line one.

One gotcha worth flagging: elsewhere in this config, , repeats your last f/t jump — but not here. Flash's jumps don't feed vim's built-in repeat memory at all, so , just sits there doing nothing after an f or t. To repeat, press the same letter again, like you just did a moment ago.

Ready for the next level? Cursor on the file below, gf to load it.

07-matching-and-paragraphs.md
