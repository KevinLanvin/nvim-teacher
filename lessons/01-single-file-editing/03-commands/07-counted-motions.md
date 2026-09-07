one two three four five six seven

New move unlocked: a number placed in front of ANY movement repeats it that many times. Cursor at the start of the line above, press 3w — instead of hopping one word like plain w, it jumps three at once, landing you on "four".

    chopped letters here

Numbers combine with combos too, and the count can go before either half — d3l and 3dl do the exact same thing. Cursor on the "c" of "chopped" above, press d3l — three letters gone, "chopped" shrinks to "pped". New combo unlocked: a count just tells the movement how far to reach before the action fires.

    fix these two words, leave the rest alone

The count doesn't care which action it's attached to — swap d for c and it still works the same way. Cursor at the start of the line above, press c2w — that deletes the first two words and drops you into insert mode right where they were, same as cw but reaching twice as far. Type a replacement, then jk.

    first line, delete me
    second line, delete me too
    third line, delete me as well
    fourth line, survives

You already know dj deletes the cursor line plus one more below. Counted, it scales the same way: cursor on "first line" above, press d2j — that's the cursor line plus 2 more, three lines gone in one combo, leaving only "fourth line, survives" standing.

    yank line one of three
    yank line two of three
    yank line three of three

Same scaling trick with yank: cursor on "yank line one of three" above, press y2j — cursor line plus 2 more, all three yanked at once. Move to the blank line below and press p to see all three land together.



dd, cc, and yy don't need a motion at all — they already act on a whole line by themselves. A count in front still works, just more directly: it multiplies how many lines they grab instead of aiming a movement.

    stack line one
    stack line two
    stack line three

Cursor on "stack line one" above, press 3dd — all three lines vanish in one shot, no motion needed, unlike d2j a moment ago. (3cc and 3yy work the same way, just changing or yanking those three lines instead of deleting them.)

    paste target line

Counts land on paste too, though it's the odd one out — p is already a complete command, not an action waiting on a movement, so a count in front just repeats the whole thing that many times instead of composing with it. Cursor on the line above, press yy to yank it, move to the blank line below, then press 3p — three copies stack up at once. (There's no such thing as d3p: d needs a movement to pair with, and p isn't one, so the two don't combine the way d3l or d3j did.)



One more thing that makes every count above easier to use for real: this config's gutter shows relative line numbers by default, so any line that isn't your cursor's own displays how far away it is, not its absolute number. Spot a target a few lines off, read the number sitting next to it, and you already have your count — 5j jumps down exactly 5, 4dd deletes exactly 4, no counting by eye required.

Ready for the next level? Cursor on the file below, gf to load it.

08-indent-combos.md