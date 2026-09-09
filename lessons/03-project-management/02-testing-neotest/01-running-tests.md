Welcome to Campaign 2: Testing. The terminal is open; now let's run actual tests without leaving nvim.

Before anything else: open a terminal with <C-/>, cd into this campaign folder, run npm install, then close it with <C-/> again. The lesson needs vitest installed locally so neotest can find and run the tests. One-time setup.

Now open math.test.ts — cursor on the filename below, gf. You'll land in a TypeScript file with four test cases: three passing, one intentionally failing. The failing one is there so you can see what a test failure looks like, not a mistake. Read through it, get oriented.

Cursor anywhere inside the "add works correctly" test — inside the describe block, anywhere on those three expect lines. Press <leader>tr. Neotest finds the nearest test (the one your cursor is closest to), runs it, and shows a pass/fail mark next to the test name in virtual text. New move unlocked.

Move the cursor into the "intentional failure" test at the bottom. <leader>tr again. This one fails — neotest shows an x marker and the virtual text fills with the error message inline. That's your signal without leaving the file.

<leader>tt runs every test in this file at once. Press it now from anywhere in math.test.ts. Three pass, one fails — the markers update to reflect the full run. New move unlocked.

<leader>tl re-runs the last test or test suite you ran, without moving the cursor back or re-triggering anything. Useful when you fix a line and want to instantly verify. New move unlocked.

<leader>tT runs every test file in the entire project. From inside math.test.ts, press it — neotest sweeps the project, finds all test files, runs them all. For a small project like this that's just the one file; in a real codebase it's your full suite. New move unlocked.

Cursor on the filename below, gf to load the next level.

02-results-and-watch.md
