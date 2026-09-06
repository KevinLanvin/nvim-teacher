Here's a line of fruit to hop across: apple banana cherry date fig

Press w a few times — your cursor jumps from word to word. New move unlocked.

Now press b — that walks backward, word by word, back the way you came.

e is different: it jumps to the END of a word instead of the start. Try it on "cherry" above.

One more for this level: ge is e's backward twin — it jumps to the END of the PREVIOUS word instead of the start of the next one. Cursor on "date" above, press ge — lands you on the last letter of "cherry".

Here's a messier line: user_name@sub.host:8080/path,more-stuff here

Cursor on the "u" in user_name, press w a bunch of times — it stops at EVERY punctuation mark: user_name, then @, then sub, then ., then host, then :, and on and on. Plain w treats letters/digits/underscores as one kind of word and every punctuation character as its own tiny word.

New move unlocked: W. Cursor back on that same "u" in user_name, press W instead — one press clears the whole mess and lands you on "here". W only cares about whitespace — everything between two spaces counts as a single WORD, punctuation and all.

W has an "end" twin too: E. Cursor on the "m" in more-stuff, press e — that's the small-word e, so it only gets you to the end of "more". Press e again and it lands on the hyphen itself — a lone punctuation mark is its own tiny word. One more e gets you to the end of "stuff".

Now cursor back on that "m" in more-stuff, press E instead — one press skips the hyphen entirely and jumps straight to the end of "stuff". Same deal as W: E only stops at whitespace, so the whole punctuation-and-letters chunk counts as one WORD.

Ready for the next level? Cursor on the file below, gf to load it.

03-line-jumps.md
