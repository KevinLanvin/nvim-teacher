version = 1

Put the cursor anywhere on the 1 above and press Ctrl-a — the number under the cursor ticks up by one, no command mode needed. New move unlocked.

timeout = 100

A count multiplies the step. Cursor on 100, press 10Ctrl-a — it jumps to 110 in one shot. Works with any size number.

port = 8080

Ctrl-x is the mirror: decrements instead of incrementing. Cursor on 8080, press Ctrl-x — drops to 8079. New move unlocked. Count works here too: undo with u to put 8080 back, then press 80Ctrl-x — lands on 8000 in one shot.

Ready for the next level? Cursor on the file below, gf to load it.

03-search-replace.md
