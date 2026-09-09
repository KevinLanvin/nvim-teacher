Execution is paused at the breakpoint inside sumSquares. Now let's move through it.

<leader>dO steps over — executes the current line and moves to the next one, staying at the same call depth. Press it now. The highlight moves from `const squared = multiply(n, n)` to `total += squared`. The variables panel updates: `squared` now has a value (1, for n=1). Step over again — highlight moves back to the top of the loop with n=2. New move unlocked.

<leader>di steps into — instead of executing a function call and moving past it, it dives inside that function. Move the cursor back to line 8 (the multiply call) and press <leader>di. You're now inside the multiply function itself, paused at `return a * b`. The call stack shows you're two levels deep: main → sumSquares → multiply. New move unlocked.

<leader>do steps out — finishes executing the current function and returns to the caller. Press it now from inside multiply. You're back in sumSquares, just past the multiply call, with `squared` resolved. Nice combo: step into to inspect, step out to escape without stepping through every line.

<leader>dC is "run to cursor" — press it while your cursor is positioned on a specific line and execution runs straight there, skipping past breakpoints in between. Move the cursor to line 22 (`console.log`) and press <leader>dC. The debugger runs all the iterations of the loop and lands exactly there. New move unlocked.

<leader>dc continues from wherever execution is currently paused — runs until the next breakpoint or until the program exits. Press it now. If you have the breakpoint on line 8 still active, it'll pause at the next iteration. Press <leader>dc repeatedly to cycle through them, or remove breakpoints with <leader>db first if you want it to run to completion.

Once the program exits, the DAP UI closes automatically. <leader>dl re-runs the last session with the same configuration — same entry file, same env vars, no prompt. New move unlocked.

Cursor on the file below, gf to load the next level.

03-inspecting.md
