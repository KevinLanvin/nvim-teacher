Splits let you view multiple buffers side by side in the same tab — useful any time you need two files on screen at once.

Press <leader>- to open a horizontal split below the current window. New move unlocked. The same buffer is now visible in both windows — you can scroll them independently.

Press <leader>| to open a vertical split to the right instead. New move unlocked. Both shortcuts are worth knowing: horizontal for reference material below, vertical for code side by side.

<C-h>, <C-j>, <C-k>, <C-l> navigate between windows — same direction logic as hjkl movement. New move unlocked. (You've already seen these work from terminal mode in the config's custom keymaps — they do the same thing in normal mode.)

<leader>wd closes the current window without touching the buffer. The file stays loaded and reachable via H/L — only the split view goes away. New move unlocked.

<C-Up> and <C-Down> resize a horizontal split taller or shorter, a couple of lines at a time. <C-Left> and <C-Right> resize a vertical split. Hold them down to move fast.

<C-w>H, <C-w>J, <C-w>K, <C-w>L move the current window to a screen edge — H to the far left, L to the far right, J to the very bottom, K to the very top. The moved window becomes full height or full width depending on the axis. New move unlocked. The main use: you opened a horizontal split but want it vertical instead — navigate into it and press <C-w>L to send it to the right edge.

<leader>wm toggles zoom: expands the current window to fill the screen, hiding all other splits. Press it again and the layout comes back exactly as it was. New move unlocked. Good for temporarily focusing on one file without closing the others.

Ready for the next level? Cursor on the file below, gf to load it.

03-opening-files.md
