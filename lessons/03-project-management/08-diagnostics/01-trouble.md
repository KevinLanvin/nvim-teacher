Welcome to Campaign 8: Diagnostics — and the final campaign of the game.

]d/[d let you jump between diagnostics one at a time inside a buffer. That's enough for a single file. When you have errors scattered across a whole project — or you want to see every TODO comment in one place — you need trouble.nvim.

<leader>xx opens the workspace diagnostics panel. Press it now. Trouble opens at the bottom of the screen, listing every LSP diagnostic in the project grouped by file: errors, then warnings, then hints. Navigate with j/k. Press <CR> on any entry to jump straight to that line in the source file. Trouble stays open so you can keep navigating. New move unlocked.

<leader>xX opens buffer diagnostics — same panel, but filtered to only show issues in the current file. Faster when you want to clear out one file's issues without wading through the whole project. New move unlocked.

Press q or <Esc> inside Trouble to close it. Or press <leader>xx again — it's a toggle.

<leader>xt opens the TODOs panel — trouble scans the project for comment markers (TODO, FIXME, HACK, NOTE, etc.) and lists them all in one place. <leader>xT narrows it further to only TODO/FIX/FIXME, filtering out the informational notes. Good for a pre-commit sweep to make sure you haven't left debug stubs behind. New move unlocked.

<leader>xQ opens the quickfix list inside Trouble — the same list you'd see with :copen, but rendered in trouble's interface so you get the preview and the familiar navigation. The complement to <leader>xL, which opens the location list (buffer-local, populated by things like :lvimgrep). You already know the quickfix list from Act 2. New move unlocked.

Inside the Trouble panel, pressing o on a file heading collapses or expands that group. Pressing i filters to only show errors (or cycles through filter presets depending on mode). The full keybind list is available with ? inside Trouble if you want to explore.

That's it. The whole game is cleared.

You started in Act 1 moving a cursor with hjkl. You built up a vocabulary of motions, combos, text objects, visual mode, searching, registers, surround, folding, and go-actions. Act 2 stretched that across files — buffers, splits, tabs, marks, fuzzy finding, grep, LSP, code actions, completions. Act 3 is where you ran things: terminals, tests, a debugger, git, Claude Code, advanced LSP, and now the full diagnostic picture.

These aren't features you need to memorize. They're moves you practiced, in order, in a file you kept open and worked through. The muscle memory is already there. When you need rename, you'll press <leader>cr without thinking. When a test fails, you'll reach for <leader>ts. When a breakpoint stops you mid-loop, you'll hover with <leader>dw.

The config is yours. Go build something.
