One more door for this campaign, and it's not vanilla vim this time — it's a plugin (mini.surround) configured to use the classic vim-surround keys, for wrapping text in quotes and brackets.

Wrap this word: hello

Cursor anywhere on "hello" above, press ysiw" — ys adds a surrounding, iw is the same inner-word text object you already know, and " is what to wrap it in. New combo unlocked: hello becomes "hello".

entire line needs parens

yss skips the motion and grabs the WHOLE line instead. Try yss( on the line above — notice the parens get a padding space on the inside, ( entire line needs parens ), since an opening bracket always pads and a closing one never does.

"already quoted"

ds deletes a surrounding instead of adding one, no motion needed, just say which character to look for. Cursor anywhere on the line above, press ds" — the quotes are gone.

'swap my quotes'

cs changes one surrounding into another: old character, then new one. Cursor on the line above, press cs'" — the single quotes become double quotes.

select and wrap me

Visual mode gets its own version: select "select" above with viw, then press S( instead of ys( — same job as ys, just for a Visual selection instead of a motion. Quirk worth knowing: normal-mode S still does its regular vanilla job (substitute the whole line) — it's only Visual-mode S that's been repurposed for surrounding here.

Campaign cleared — Write is fully unlocked: i, a, I, A, o, O, and now ys/ds/cs/S for wrapping things in quotes and brackets. Next up, Campaign 3: Commands. Cursor on the file below, gf to load it.

../03-commands/01-the-combo-system.md