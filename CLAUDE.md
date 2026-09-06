# nvim-teacher

## Purpose

The actual config lives at `~/.config/nvim` and is a LazyVim setup tailored
for web development (Vue 3 + NestJS/TypeScript), built in an earlier session.

The job of this project is to produce a set of **learning-instruction files**
that teach the user (a working dev, not a Neovim beginner) how to actually use
that config day-to-day. Each file should cover **one aspect** of the config —
a plugin, a workflow, or a set of related keymaps — so the user can work
through them incrementally rather than reading one giant manual.

## `nvim-config/` — the config backup, not the lesson source of truth

`nvim-config/` is a plain snapshot copy of `~/.config/nvim` (init.lua,
lazyvim.json, `lazy-lock.json` for exact plugin-version pins, stylua.toml,
.neoconf.json, and `lua/`), kept here purely so cloning this repo and running
`./install.sh` reproduces the exact same nvim setup on a new machine —
`install.sh` symlinks `nvim-config/` to `~/.config/nvim` (backing up anything
already there first), then lazy.nvim installs the pinned plugins on next
launch.

This is a snapshot, not a live link: it only reflects `~/.config/nvim` as of
whenever it was last copied over, so **it can drift out of date**. Lessons
must still be verified against the real `~/.config/nvim` per "Source of
truth" below, never against `nvim-config/` — re-sync `nvim-config/` (re-copy
the files listed above) whenever the live config changes and you want the
backup to stay current.

## Source of truth

Before writing or updating any lesson, re-read the real config — don't rely
on memory of what it contains, and never invent a keymap, command, or plugin
that isn't actually there:

- `~/.config/nvim/lazyvim.json` — which LazyVim extras are enabled
- `~/.config/nvim/lua/plugins/*.lua` — custom plugin specs
- `~/.config/nvim/lua/config/keymaps.lua` — custom keymaps
- `~/.config/nvim/lua/config/options.lua`, `autocmds.lua` — currently empty (LazyVim defaults apply)
- LazyVim's own default keymaps: https://www.lazyvim.org/keymaps (defaults not redefined locally still apply)

If the user changes their nvim config in a later session, the lessons here
may go stale — check the config again before trusting an old lesson file's
claims about a keymap or plugin option.

## Current config summary (as of 2026-09-03)

**Base:** LazyVim

**Enabled extras** (`lazyvim.json`):
- `lang.vue` — Vue 3 SFC support (volar)
- `linting.eslint`
- `formatting.prettier`
- `dap.core` — debugging
- `test.core` — testing
- `ai.claudecode` — Claude Code integration inside nvim

**Custom plugin specs** (`lua/plugins/`):
- `vue.lua` — adds `typescript`/`tsx` treesitter parsers (needed to highlight `<script lang="ts">` blocks inside `.vue` files; the vue extra alone doesn't pull these in)
- `dap.lua` — custom debug launch config for Node/TS backends: runs the entry file via `nodemon` + `ts-node` (live reload, no `tsc` build step, no per-project `launch.json`). Prompts for entry file path and extra env vars at launch time, remembered per project (by cwd) for the session
- `test.lua` — neotest with `neotest-jest` and `neotest-vitest` adapters
- `colorscheme.lua` — onedarkpro theme (onedark variant, cursorline on)
- `bufferline.lua` — bufferline always visible even with one buffer
- `lualine.lua` — winbar shows a "pretty path" (dir dimmed, filename bold) for the current buffer
- `minimap.lua` — mini.map, a VSCode-style minimap docked on the right (open by default, `<leader>um` toggles it), with diagnostic and gitsigns overlays
- `example.lua` — inert (LazyVim's stock example file, disabled via early return) — not a real feature, skip it

**Notable LazyVim defaults worth knowing** (not in `lua/plugins/`, since
they're LazyVim core, but they change vanilla-vim behavior that a lesson
could easily get wrong — verified by reading
`~/.local/share/nvim/lazy/flash.nvim` and
`~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/editor.lua`):
- `folke/flash.nvim` is enabled with default opts. It takes over `f`/`F`/`t`
  (and `T`, by symmetry) with a highlighted-preview jump: dims the rest of
  the screen, highlights every match, and — since `modes.char.multi_line`
  defaults to `true` — searches the **whole file**, not just the current
  line (verified live: jumping to a char that only exists many lines away
  still works). Landing semantics are unchanged (f/F land on the char, t/T
  stop one short). Repeat is "clever-f style" via `char_actions`: press the
  *same* trigger key again to go to the next match, or its case-flipped
  twin to step back one (verified live). This config's `,` (remapped to
  vanilla `;`, "repeat last f/t") does **not** reach flash's jumps — flash
  never touches vim's native find-char memory, so `,` is a no-op after an
  `f`/`t` here (verified live: cursor didn't move). Documented in
  `01-move/06-find-char.md`.
  - Known cosmetic quirk (left as-is, not worth a lesson mention): after
    the first same-key repeat, the "current match" highlight stops tracking
    which match you're actually on (traced to `flash/plugins/char.lua`'s
    `state.target` not being recomputed on the non-interactive repeat
    path). The jump itself still lands correctly; only the color cue breaks.
  - flash also takes over plain `s`/`S` (`normal`/`visual`/`operator-pending`)
    for `flash.jump()`/`flash.treesitter()`. Vanilla vim's `s` (substitute
    char) and `S` (substitute line) are **not reachable** via those keys in
    this config — don't teach them as `s`/`S` in any future lesson (use
    `cl`/`cc` instead, which land on the same result through `03-commands`'
    combo system).

**Custom keymaps** (`lua/config/keymaps.lua`):
- Terminal mode: `<C-h/j/k/l>` and `<C-Up/Down/Left/Right>` escape terminal mode and do window nav/resize — useful for jumping out of an embedded terminal (e.g. the Claude Code pane) without manually leaving terminal mode first
- Insert mode: `jk` and `kj` → Escape
- Normal/Visual mode: `;` and `,` are swapped — `;` opens command-line mode (no Shift), `,` repeats the last f/t/F/T motion (taking over `;`'s old job)
- Normal mode: `dm` + a mark name deletes that mark (`dma`, `dmA`, ...) and `dm!` bulk-deletes every lowercase mark — a custom shortcut for vanilla vim's `:delmarks`/`:delmarks!`, no colon needed

## Lesson file format — gaming framing

Lessons are **not** reference docs — no headers, no tables, no checklists.
The whole `lessons/` tree is framed as one game, played live inside nvim,
structured in three tiers:

- **Act** — a top-level arc, and a real physical folder
  (`lessons/01-single-file-editing/`, `02-project-editing/`,
  `03-project-management/`). Everything about a campaign's scope of editing
  (single file vs. project-wide vs. project tooling) lives inside its act's
  folder.
- **Campaign** — one lesson topic, a numbered folder or single file
  (`NN-topic-slug/` or `NN-topic-slug.md`) nested directly inside its act's
  folder. Numbering restarts at `01` within each act — a campaign's number
  is its position within its act, not a global position across the whole
  tree. Each campaign opens with a line setting the scene ("Welcome to
  Campaign 3: Commands...", where the number is the act-local one) and ends
  with a "campaign cleared" wrap-up that teases the next campaign by name
  (the very last written campaign of an act — or of the whole game — ends
  the arc instead, no dangling teaser to an unwritten lesson). When a
  teased campaign lives in a different act, name the act too ("Next up, Act
  2, Campaign 2: Bookmarks, take two").
- **Level** — one file inside a campaign (`01-*.md`, `02-*.md`, ...),
  played top to bottom, one paragraph per beat. Never call a level a
  "block" — that word is retired from lesson prose entirely (including
  for practice text: call a multi-line unit of practice material a
  "chunk" or "piece", not a "block").

Each paragraph in a level:

- introduces exactly **one** command/keymap
- is written second person, casual, encouraging ("Nice.", "Try it now.")
- references what the user just did, so it reads as a continuous mini-game,
  not a list ("Now press k — that takes you back up.")
- where the command needs something to act on (a word to delete, a paren to
  jump to, a line to yank), **embed that practice material directly in the
  file** — filler lines, a `replaceme` word, a throwaway line to `dd`, a
  punctuation-heavy line for `f`/`t` — so the level itself is the
  playground, not just a description of one.
- frames new commands with the game's own vocabulary: "New move unlocked"
  for a plain motion, "New combo unlocked" for an action+movement pairing
  (an action like `d`/`c`/`y` plus a movement is literally a combo input,
  lean on that framing whenever the two compose) — pick whichever fits the
  campaign, and keep a small celebratory line for a beat landing ("Nice,
  combo landed.").

Introduce commands in increasing complexity within a campaign, and call out
this config's custom quirks inline, in plain language, right where they'd
actually surprise someone (e.g. the `;`/`,` swap) — not as a separate
"notes" section. Only mention this config's actual escape (`jk`/`kj`) —
never say "Esc" or reference stock-vim Escape, this config doesn't use it.
Acts are split by **scope of what's being edited**, not vanilla-vim-vs-plugin:
Act 1 (single-file editing) covers vanilla vim fundamentals plus any plugin
that still operates on just the current file (e.g. mini.surround, folding);
Act 2 (project editing) covers anything that spans files — buffers/splits,
tabs, cross-file marks, LazyVim navigation, LSP, linting/formatting; Act 3
(project management) covers tooling around the project as a whole — testing,
debugging, git, the Claude Code integration. Judge a new topic by what it
operates on, not by whether a plugin is involved.

**Anticipate where each command sends the cursor.** A jump command (`G`,
`gg`, `/search`, a mark) can carry the reader off-screen from earlier text
in the same level — don't introduce something like `G` and reference a
`gg` line that's no longer visible. Two ways to handle this, use both:
- Pair an "away" jump with its "return" jump back-to-back (teach `G` and `` ` ` `` (or `gg`) in the same breath, not paragraphs apart).
- If a campaign topic has more than ~5-6 beats, split it into a directory
  of levels instead of one long file (see `lessons/01-single-file-editing/01-move/` for the
  pattern) — each level short enough to fit on one screen, so any jump
  within it stays visible. Only make a level deliberately long when the
  command being taught *is* scrolling (e.g. `Ctrl-d`/`Ctrl-u`), and say so
  explicitly, in the game's own words ("this level's an endurance round").
- Chain levels with `gf`: end each level with the next filename in plain
  text on its own line (relative path if the next level lives in another
  campaign folder, e.g. `../02-write/01-entering-insert.md`), and tell the
  reader to put the cursor on it and press `gf` ("go to file") to open it —
  keeps them inside nvim the whole time and sneaks in another real command
  for free.

One topic per campaign. A topic is a single file (`NN-topic-slug.md`,
directly inside the act folder) if it fits in ~5-6 beats, or a numbered
directory of levels (`NN-topic-slug/01-*.md`, `02-*.md`, ...) if it doesn't.
Name campaigns `NN-topic-slug`, numbered beginner → advanced within their
act; the act order itself (1 → 2 → 3) carries the overall beginner →
advanced progression across the whole tree.

## Act 1: Single-File Editing — `lessons/01-single-file-editing/`

Editing within one buffer only — vanilla vim fundamentals, plus the plugins
that still operate at single-file scope (mini.surround, folding):

- `01-move/` — cursor movement (hjkl, words, line jumps, goto/scroll,
  jumplist, find-char, matching brackets/paragraphs), and finishes with
  local (a-z) marks as its 8th and final level (`08-bookmarks-local.md`):
  `ma`/`` `a ``, `:marks`, the automatic `` `. ``/`` `^ ``/`` `[ ``/`` `] ``
  marks, mark+action combos (`` d`a ``/`` y`a ``), and `:delmarks`/
  `:delmarks!` plus this config's custom `dma`/`dm!` shortcuts — vanilla vim
  throughout, no plugin. Marks were folded into Move (rather than kept as
  their own campaign) because they're fundamentally a movement tool — user
  call. Global (A-Z) and numbered (0-9) marks are cross-file, so those stay
  in Act 2's `02-bookmarks-global.md` instead, which now recaps this level
  by name ("back in Move") rather than by a campaign number of its own.
- `02-write/` — entering insert mode (i/a/I/A/o/O), plus a mini.surround
  level (`03-mini-surround.md`)
- `03-commands/` — action+movement combos (delete/change/undo/yank, text
  objects, registers). Still needs a future level for counted motions/combos
  (`3w`, `d2j`, `y3w`) and this config's relative line numbers
  (`relativenumber` is on by default via LazyVim core, unmodified here) — a
  count composes directly with the combos already taught here, so it belongs
  in this campaign rather than the new `06-tools/`.
- `04-visual-mode/` — v/V/Ctrl-v, visual text objects, gv/o
- `05-searching/` — `/`, `?`, `*`, `#`, n/N

**Not yet written, still needed to close out Act 1:**
- `06-tools/` — a directory of levels for standalone single-buffer power
  tools that aren't action+movement combos (so they don't belong in
  `03-commands`) and aren't hefty enough to each carry their own campaign.
  Planned levels, roughly beginner → advanced:
  - Join lines: `J`/`gJ`.
  - Increment/decrement: `Ctrl-a`/`Ctrl-x` on a number under the cursor.
  - Search & replace: `:s`, `:%s/old/new/g`, the `c` confirm flag, ranges,
    and `&` to repeat the last substitute.
  - Macros: `qa` ... `q` to record into register `a`, `@a` to replay,
    `@@` to repeat the last-played macro, count+`@a` to replay N times —
    call back to registers already taught in `03-commands/06-yank-and-registers.md`.
  - Folding: practice material should be real `.vue` files with a foldable
    `<template>` block AND foldable functions inside `<script setup>`, so
    both fold shapes (markup vs. function bodies) get exercised. Verified
    for this config: `foldmethod = "indent"` and `foldlevel = 99` are
    LazyVim core defaults (unmodified here, no `nvim-ufo` or other fold
    plugin installed), so folds exist but start fully OPEN — say that
    explicitly before teaching `zc`/`za`, otherwise the first command in
    the level visibly does nothing. Vanilla vim fold commands throughout:
    `zc`/`zo`/`za` (close/open/toggle one fold), `zR`/`zM` (open/close all
    folds), `zj`/`zk` (jump to next/previous fold).
  Deliberately excluded: `gu`/`gU`/`g~` (case-change operators) are real
  action+movement combos, so those belong in `03-commands`, not here.
- `07-go-actions/` — shifted from `06` to make room for `06-tools/` above.
  Sized as a normal campaign (single file if it fits ~5-6 beats, a
  directory of levels otherwise, per the usual rule). Scoped to
  `g`-prefixed "go" commands that stay **within the current buffer/file
  only** — nothing that jumps you into a different file, that kind of
  cross-file "go" is deliberately out of scope for this campaign. Covers
  the rest of the vanilla single-buffer `g` commands not already taught
  elsewhere: `gi` (resume insert at your last insert position), `g_`
  (last non-blank character of the line, contrast with `$` from `01-move`),
  `` g; ``/`` g, `` (walk the change-list — jump between your recent EDIT
  locations in this file, contrast with the `Ctrl-o`/`Ctrl-i` jumplist and
  `` `. `` mark already taught), and `gp`/`gP` (paste, but leave the cursor
  after the pasted text instead of on it, contrast with `p`/`P` from
  `03-commands`). Already-taught `g`-commands (`gg`, `ge`, `gv`) are NOT
  re-taught here, just a single recap line at most. `gf` (cross-file by
  definition) and `gd` are both deliberately excluded — `gf` for being
  cross-file, and `gd` because LazyVim's LSP remaps it to go-to-definition
  in this config (verified: `lazyvim/plugins/lsp/keymaps.lua:23`), not
  vanilla vim's declaration search, so it belongs in the future
  TypeScript/NestJS LSP lesson instead. Since this is now the last
  planned campaign of Act 1, its final level ends the arc instead of
  teasing a next campaign.

## Act 2: Project Editing — `lessons/02-project-editing/`

Anything that spans more than one file — buffers, windows, tabs, cross-file
marks, and LazyVim's own navigation/LSP/formatting tooling:

- `02-bookmarks-global.md` — uppercase (A-Z) marks demoed with a real
  cross-file `gf` round-trip into Act 1's `01-move/`, and numbered (0-9)
  marks (automatic, restored via `shada` across sessions) — vanilla vim, no
  plugin. Single file. Recaps `:marks`/`:delmarks`/`dma`/`dm!` from Act 1's
  `01-move/08-bookmarks-local.md` (the final level of Move), which cover
  global marks identically. Numbered `02` (not `01`) because
  `01-buffers-and-splits/` is meant to come first once it's written.
- `03-tabs/` — tab management (`<leader><tab>` prefix:
  `tabnew`/`tabclose`/`tabonly`/`tabfirst`/`tablast`, plus vanilla
  `gt`/`gT`).

**Not yet written:**
- `01-buffers-and-splits/` — buffers (`:bnext`/`:bprev`/`:b`) and window
  splits (`:split`/`:vsplit`, `Ctrl-w` navigation). This is also where
  LazyVim's core remap of normal-mode `H`/`L` to prev/next buffer belongs
  (`H`/`L` stay vanilla screen-position only in visual/operator-pending
  mode) — it was deliberately deferred out of the Move campaign so it
  could be taught alongside real buffer workflow instead of as a stray
  gotcha. Once written, splice it into the chain right after Act 1's
  `05-searching/`, ahead of `02-bookmarks-global.md`.
- `04-lazyvim-basics/` — which-key, file explorer, fuzzy finding (LazyVim
  defaults, not custom config).
- `05-vue-sfc-editing/` — Vue 3 SFC editing: LSP, treesitter, `<script
  lang="ts">` highlighting.
- `06-typescript-nestjs-lsp/` — TypeScript/NestJS LSP workflow: go to def,
  references, diagnostics. Also where `gd` belongs (LazyVim's LSP remaps
  it to go-to-definition in this config, verified:
  `lazyvim/plugins/lsp/keymaps.lua:23` — not vanilla vim's declaration
  search, so it was excluded from Act 1's `06-go-actions`).
- `07-eslint-prettier/` — ESLint + Prettier extras: format-on-save, lint
  signs, fix commands.

## Act 3: Project Management — `lessons/03-project-management/`

Tooling around the project as a whole, not text editing itself — testing,
debugging, git, AI tooling. Nothing written yet:

- `01-testing-neotest/` — testing with neotest (Jest for NestJS, Vitest for
  Vue).
- `02-debugging-dap/` — debugging Node/TS with the custom nodemon +
  ts-node DAP config.
- `03-git-basics/` — git inside nvim. Not verified yet: check whether this
  relies purely on LazyVim core defaults (gitsigns hunks, the default
  `<leader>g` group, Snacks' lazygit terminal) or needs its own plugin
  spec, before writing anything — no custom git plugin spec exists in
  `lua/plugins/` as of this writing.
- `04-claude-code/` — the Claude Code (`ai.claudecode`) integration inside
  nvim.

Explicitly **not** planned as lessons (per user request): a custom keymaps
cheat sheet, and a UI tour (bufferline, lualine winbar, onedarkpro theme).

## Working conventions for this project

- Verify against the real config files before writing/updating a lesson —
  do not describe a keymap or option that isn't actually set.
- Don't pad lessons with generic Neovim/LazyVim tutorial content the user
  can already get from `:LazyVim` docs — focus on what's specific to *this*
  config and *this* stack (Vue3/NestJS).
- No need to write all lessons at once — add them incrementally as the user
  asks to learn a given aspect.