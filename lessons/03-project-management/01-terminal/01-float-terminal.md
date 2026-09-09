Welcome to Act 3: Project Management — and to Campaign 1: Terminal. Everything before this was about editing text. Now you're running things: servers, tests, git, a debugger. You need a terminal inside nvim for all of it. Let's unlock that first.

Press <C-/> right now. A floating terminal window opens, covering most of the screen. You're dropped straight into terminal mode — the status line says "TERMINAL" instead of "NORMAL". This is a real shell. Type ls or git status and see what comes back. New move unlocked.

Done? Press <C-/> again. The terminal disappears. The key is a toggle — same binding to open and close. Your editor is exactly where you left it.

Open it again with <C-/>. Now type a long command, something that produces several lines of output. When you're done looking at it, close with <C-/> again. That's your main escape hatch. You'll use it constantly.

<leader>ft and <leader>fT are two alternatives. <leader>ft opens the terminal rooted at the project root (wherever the .git folder is). <leader>fT opens it in the current working directory instead. For most work you want <leader>ft — it's the one that puts you in the right place to run npm scripts, git commands, and everything else project-level. New move unlocked.

Here's the situation where the custom keymaps shine. Imagine you have the terminal open as a split — not floating, but pinned to the bottom of your screen (use <leader>- to open a horizontal split and then open a terminal there with <C-/>). You're inside the terminal in terminal mode. To jump back to your code window, vanilla vim would need you to first escape terminal mode, then use Ctrl-w to navigate. This config skips that: <C-h>, <C-j>, <C-k>, <C-l> work directly from terminal mode — they escape and navigate in one step. Try it: terminal on the bottom, <C-k> to jump up to your code window, <C-j> to come back down. New move unlocked.

While you're in that split terminal, <C-Up> and <C-Down> resize it — again from terminal mode, no escape step needed. Tap <C-Up> a few times to grow the terminal panel, <C-Down> to shrink it back. Then <C-k> to leave. New move unlocked.

Campaign cleared — Terminal is fully unlocked. Next up, Campaign 2: Testing. Cursor on the file below, gf to load it.

../02-testing-neotest/01-running-tests.md
