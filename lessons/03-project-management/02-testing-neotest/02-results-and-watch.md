You've run tests. Now let's read the results properly and set up watch mode so tests re-run on every save.

Press <leader>ts. A summary panel slides open on the right — a tree showing your project's test hierarchy: files, describe blocks, individual tests. Each entry shows pass/fail status. Navigate it with j/k. Press <CR> on any test to jump to its location in the source file. New move unlocked.

While the summary panel is open, press r on any test entry to run just that test. Same as <leader>tr but without needing the cursor to be inside the test file. Handy when you're reviewing results and want to re-run one specific case.

Close the summary with <leader>ts again (it's a toggle) or q. Back in math.test.ts.

<leader>to pops open the output for the test nearest to your cursor — the raw vitest output with the diff, the stack trace, the full error message. Useful when the inline virtual text is too terse to diagnose a failure. Press q to close. New move unlocked.

<leader>tO opens a persistent output panel at the bottom of the screen that stays visible and updates as tests run. A good setup for active TDD: split the screen, test output on the bottom, code on top. Toggle it with <leader>tO again to close. New move unlocked.

<leader>tw puts neotest into watch mode for the current file. Press it now — neotest starts watching math.test.ts. Make a tiny edit anywhere in the file (add a space, change a number), save with :w, and watch the results update automatically without pressing anything else. New move unlocked.

<leader>tw again to stop watching. <leader>tS stops any test run in progress. New move unlocked.

Campaign cleared — Testing is fully unlocked. Next up, Campaign 3: Debugging. Cursor on the file below, gf to load it.

../03-debugging-dap/01-breakpoints-and-launch.md
