callSomething(delete all of this, keep the parens)

You just learned % jumps to a matching paren. This combo skips the jumping and grabs everything inside in one move: cursor anywhere inside the parens above, press di( — "delete inner paren" — gone, but the ( and ) themselves survive. New combo unlocked: text objects don't care exactly where your cursor is, only which pair it's inside.

callSomething(type your own text here)

Same idea, but changing instead of deleting: cursor inside these parens, press ci( — deletes the inside and drops you into insert mode, type something new, then jk.

const name = "replace only what's between the quotes"

Quotes work the same way: cursor anywhere inside the quoted text above, press da" — "delete around quotes" — this time the quote marks themselves go too, unlike the inner version. Try ci" on a similar line if you want the version that keeps the quotes and drops you into insert.

This is one paragraph chunk, made of a
few lines that all belong together as one
piece, the same kind of chunk you jumped
between with { and } back in Campaign 1.

Cursor anywhere inside that chunk above, press dip — "delete inner paragraph" — the whole chunk disappears at once, no need to dd each line. cip does the same but drops you into insert mode after, ready to type a replacement.

Ready for the next level? Cursor on the file below, gf to load it.

05-undo-redo.md
