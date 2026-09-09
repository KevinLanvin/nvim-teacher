Welcome to Campaign 3: Debugging. You can write code, test it, watch it run. Now let's stop it mid-execution and look inside.

First: open a terminal, cd into this campaign folder, run npm install. The launch config needs nodemon and ts-node installed locally. Once done, close the terminal and gf to server.ts below to open the practice file.

server.ts

Back? Good. server.ts has a main function that computes a sum of squares and doubles a list. Simple enough that you can predict what every variable holds — exactly what you want for learning a debugger.

Move your cursor to line 8 — the line that reads `const squared = multiply(n, n)`. Press <leader>db. A red dot appears in the gutter. That's your breakpoint. New move unlocked. The loop will pause here on every iteration, once per number in the array.

Add a second breakpoint on line 11 (the `return total` line) with <leader>db again. Now you have two. Toggle one off the same way: cursor on the line, <leader>db removes it. Put it back before continuing.

<leader>dB (capital B) sets a conditional breakpoint instead of an unconditional one. A prompt appears at the bottom: type a condition expression like `n > 2` and press enter. The breakpoint only fires when the condition is true — in this case, only for the numbers 3, 4, and 5. Try setting one on line 8 with the condition `n === 3` so it only hits on the third iteration.

Now launch the debugger: press <leader>dc. A prompt appears asking for the entry file — type `server.ts` (or the full path if the cwd isn't this folder). A second prompt asks for extra env vars — leave it empty, just press enter. The DAP UI opens automatically across the bottom of the screen, and execution pauses immediately at your first breakpoint. New move unlocked.

You're paused at line 8. The DAP UI shows the current call stack and the variables in scope. Look at the variables panel — you can see `n` with its current value (1 for the first iteration), and `total` still at 0. The current line is highlighted. You're inside the running program.

Cursor on the file below, gf to load the next level.

02-stepping.md
