comment me out

New combo unlocked: gc is another action in the same family as d/c/y/>, but instead of deleting, changing, or shifting text, it toggles a comment on or off — wrapped in whatever comment syntax fits the file you're in (here, a markdown file, that's <!-- -->). gcc is the doubled shorthand for "toggle this whole line," same pattern as dd and >>. Cursor anywhere on the line above, press gcc — it wraps in <!-- comment me out -->.

Press gcc again on that same line — comments toggle, so the second press strips the <!-- --> right back off.

this whole chunk
should get commented
out together, all
three lines at once

gc also pairs with a real movement, just like d/c/y/> did. Cursor anywhere in the chunk above, press gcap — "comment around paragraph" — all four lines get commented in one combo. Notice each line gets its own <!-- --> wrapper rather than one comment spanning all four; that's how line comments work here.

Ready for the next level? Cursor on the file below, gf to load it.

10-mini-surround.md

