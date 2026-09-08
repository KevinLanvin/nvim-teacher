Macros record a sequence of keypresses into a register and play them back on demand. The register names (a–z) are the same named slots from Campaign 3's yank-and-registers level — same buckets, just filled by recording instead of yanking.

const alpha = 'one'
const beta = 'two'
const gamma = 'three'

In normal mode, q followed by a register name starts recording into that register. Cursor on the "alpha" line, press qa — vim is now watching every key you press. (The status line shows "recording @a".)

Now do a quick repeatable edit: press A to jump to end of the line in insert mode, type a literal semicolon, press jk to return to normal mode, then press j to move down one line. That's the whole sequence. Press q to stop recording. New move unlocked: qa…q captured everything between them.

Press @a — the macro replays: jumps to end of "beta", inserts a semicolon, exits insert, moves down to "gamma". New move unlocked.

@@ repeats whichever macro ran last, no need to remember the register name. Press @@ — "gamma" gets its semicolon too. New move unlocked.

const x = 1
const y = 2
const z = 3
const w = 4
const v = 5

Re-record if the previous macro picked up anything extra: qa, A;, jk, j, q. Cursor on "const x", press 5@a — the macro fires five times in a row, one per line, all five done in a single command.

Ready for the next level? Cursor on the file below, gf to load it.

05-folding.vue
