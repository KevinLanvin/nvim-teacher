The quickfix list is a persistent list of file locations — errors, search results, LSP references, whatever tool populated it. It outlasts the operation that created it and can be navigated any time.

If you pressed <C-q> in the last level, you've already got one loaded. If not — or you want a fresh one — :vimgrep /quickfix/gj **/*.md builds one yourself, vanilla vim, no plugin needed: g catches every match on a line instead of just the first, j means don't jump to the first result immediately. New move unlocked. Run it now: it'll turn up every lesson file that mentions quickfix, this one included.

<leader>xq toggles the quickfix window open and closed. Try it now — you'll see every match, filename and line number for each. When the window is open you can see all the entries; when it's closed you can still navigate them. New move unlocked.

]q jumps to the next entry in the quickfix list, [q jumps to the previous one — no need to have the window open, same bracket-pair navigation as ]b/[b for buffers. New move unlocked.

<leader>sq opens the quickfix list in the Snacks picker instead — searchable and filterable. Try filtering for one specific filename among the matches, useful when the list is long and you want a direct jump rather than stepping through with ]q. New move unlocked.

The quickfix list gets populated by things like LSP "go to all references", compiler errors, and tools like grug-far (project-wide search-and-replace, also installed in this config) — the exact mechanism changes, but it always lands in this same list. You'll use it heavily in Act 3.

Campaign cleared — LazyVim Basics is fully unlocked: which-key for keymap discovery, <leader>e for the file explorer, <leader><space>/<leader>fr/<leader>, for fuzzy finding, <leader>//<leader>sw/<C-q> for project-wide grep, and :vimgrep/<leader>xq/]q/[q/<leader>sq for quickfix. Next up, Campaign 5: LSP Basics. Cursor on the file below, gf to load it.

../05-lsp-basics/01-go-to-definition.md
