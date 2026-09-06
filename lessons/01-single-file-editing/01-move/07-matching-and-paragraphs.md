function bootUp(config) {
  if (config.ready) {
    console.log("go")
  }
}

Cursor on the opening ( of bootUp(config) above, press % — jumps straight to its matching closing ). New move unlocked: % hops between matching brackets, parens, and braces.

Try it again from that closing paren — % jumps you right back. Move the cursor onto either { above and press % to jump to its matching }.

Here's the move that answers the big question — "how do I jump to the next chunk of code?" Press } from anywhere inside that function — it jumps forward to the next blank line, hopping over the rest of the current chunk in one move.

Another chunk starts here.
This chunk has its own lines.
And it ends here.

Land on "Another chunk starts here." above, then press } again to skip past it to the next blank line. Press { to jump backward instead — back to the previous blank-line boundary.

One last move for this campaign, and it's a good one: bookmarks. Cursor on the file below, gf to load it.

08-bookmarks-local.md
