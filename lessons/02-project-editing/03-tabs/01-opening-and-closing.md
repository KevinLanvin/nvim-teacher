Welcome to Campaign 3: Tabs. A tab isn't a buffer and it isn't a split — it's a whole separate layout of windows, its own little workspace living inside the same nvim session. Time to learn how to open, close, and clean them up.

Press <leader><tab><tab> now — that's leader, then tab, then tab again. New move unlocked: a fresh empty tab opens up, blank slate, and this lesson is still sitting safely in the tab behind it.

Type anything in that new tab, doesn't matter what, then press <leader><tab>d — that closes the current tab and drops you right back where you were, scratch buffer gone with it.

Now spam <leader><tab><tab> three or four times in a row — you've got a pile of empty tabs stacked up. New move unlocked: <leader><tab>o. Press it and tabonly wipes out every tab except the one you're standing in, back down to just one instantly.

One thing worth knowing: if you're ever down to your very last tab and press <leader><tab>d again, that closes nvim entirely — same as :q on your last window. A tab close only "just closes a tab" when there's another one left to land on.

Ready for the next level? Cursor on the file below, gf to load it.

02-jumping-between-tabs.md