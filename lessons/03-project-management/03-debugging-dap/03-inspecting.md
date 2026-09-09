Stepping moves through code. Inspecting reads the state while paused. These are the moves that actually tell you what's wrong.

Launch the debugger again with <leader>dc. When it pauses at a breakpoint, hover your cursor over the variable `total` on line 9. Press <leader>dw — a small popup appears showing the current value of that expression. Move the cursor to `numbers` on the function signature and press <leader>dw again — it shows the full array. New move unlocked.

For visual selection evaluation: visual-select the expression `n * n` on line 8 (v then w or f)n to select it). Press <leader>de. The result of evaluating that expression in the current scope appears in a popup. Works on any valid expression the runtime can evaluate — variable names, method calls, arithmetic. New move unlocked.

<leader>dr toggles the REPL panel — an interactive console connected to the running process. You can type expressions here and have them evaluated in the current scope while execution is paused. Try it: open the REPL, type `data` or `total` and press enter. The runtime replies with the value. Type any valid expression. Close the REPL with <leader>dr again. New move unlocked.

The DAP UI panels across the bottom give you three views at once: the call stack on the left (which function called which), the variables panel in the middle (every variable in scope at the current frame), and the watches panel on the right (expressions you've pinned to watch as you step). Click or navigate to an entry in the call stack with <leader>dj (down the stack) and <leader>dk (up) — the variables panel updates to show the scope at that frame, so you can see what the caller knew at the time of the call.

<leader>dt terminates the session cleanly — stops the running process, closes the DAP UI, returns you to a normal editing state. Use it whenever you're done or if the debugger gets stuck. New move unlocked.

Campaign cleared — Debugging is fully unlocked. Next up, Campaign 4: Git. Cursor on the file below, gf to load it.

../04-git-basics/01-hunks.md
