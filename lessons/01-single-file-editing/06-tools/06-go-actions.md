The g key prefixes a whole family of commands, and you've already met a few: gg to jump to the top, ge to step back one word-end, gv to reselect your last visual selection. Those are in your toolkit. This level covers the single-file g-commands you don't have yet.

type something here: 

Cursor on "here:", press A to jump to end of line in insert mode, type a few words, then jk. Now move the cursor several lines away. Press gi — jumps back to exactly where you last left insert mode and re-enters it, right where you were typing. New move unlocked: gi is "go back to where I was inserting." Press jk when done.

this line ends on the actual last word

$ lands on the last character of the line — you already know that from Move. g_ also goes to end of line, but specifically to the last NON-BLANK character. On a clean line like the one above they're identical; the difference shows up on lines with trailing spaces, where $ stops on the whitespace and g_ skips past it. Try both now. New move unlocked.

edit spot one: replaceme
edit spot two: replaceme

Make two quick changes at different spots: cw on "replaceme" in "edit spot one", type a replacement, jk. Then cw on "replaceme" in "edit spot two", type something different, jk. Now jump away — press gg to land at the very top of the file.

g; walks BACKWARD through your change-list — every place you've made an edit, most recent first. Press g; and it jumps to your last edit (same destination as `. from Move, but g; keeps going). Press it again and it steps to the edit before that. New move unlocked.

g, walks FORWARD through the change-list when you've gone back too far with g;. Press g, to step toward the present again. New move unlocked. Together, g;/g, are a trail through your own edits — different from Ctrl-o/Ctrl-i, which tracks all cursor movement rather than edit locations specifically.

    paste target line

Yank the line above with yy, then move down one line. Press gp — pastes below the cursor and leaves the cursor AFTER the pasted text, rather than on its first character like plain p would. New move unlocked. Useful when you're about to paste again immediately — each gp leaves you positioned just past the last paste, ready for the next one.

gP is the same idea but pastes above, cursor left after. Try it. New move unlocked.

Campaign cleared — Tools is fully unlocked: J/gJ to join lines, Ctrl-a/Ctrl-x to increment and decrement, :s and :%s for search and replace, macros to record and replay anything, zc/zo/za/zM/zR/zj/zk to fold and navigate, and gi/g_/g;/g,/gp/gP for the full g-toolkit. Act 1 cleared — you've got everything to edit a single file at full speed. Next up, Act 2, Campaign 1: Buffers and Splits. Cursor on the file below, gf to load it.

../../../02-project-editing/01-buffers-and-splits/01-buffers.md
