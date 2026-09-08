In this config, ; is the key that opens command-line mode — the job : normally does in stock vim, but without needing Shift. Any command written :something in this level is reached by pressing ; then typing the rest.

the quick brown fox jumped over the lazy dog
the quick fox is also quick on this line
not touching this one

:s/old/new replaces the first match on the current line. Cursor on "the quick brown fox" line, type :s/quick/slow and hit Enter — only the first "quick" on that line changes. New move unlocked.

Add /g to replace every match on the line instead of just the first. Cursor on "the quick fox is also quick" line, type :s/quick/slow/g — both instances swap at once.

% targets the entire file. Type :%s/quick/slow/g and hit Enter — every remaining "quick" in the file changes in one shot. Undo with u a couple of times to restore them for the next beats.

Add c to the flags and vim pauses at each match before swapping. Type :%s/quick/slow/gc — press y to replace, n to skip, q to quit early. Try a couple of each then quit out.

Line ranges let you limit which lines the substitution touches. The relative-number gutter makes this easy: read the line numbers off the screen, then type :1,2s/quick/slow/g — only the first two lines change, the third stays clean.

& in normal mode repeats your last :s on the current line without re-typing anything. Undo to bring the "quick"s back, move to any line that still has one, and press & — fires the last substitute on that line alone. New move unlocked.

Ready for the next level? Cursor on the file below, gf to load it.

04-macros.md
