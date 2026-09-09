Welcome to Campaign 7: ESLint and Prettier. This config has both enabled as LazyVim extras. Prettier handles formatting; ESLint handles lint rules. They run automatically, but there are manual controls worth knowing.

This campaign's practice works best with a file from your actual TypeScript or Vue project — the lesson folder itself doesn't have prettier installed, so auto-format won't trigger on save here. There IS a sample.ts in this folder to show you what messy code looks like. Open it with gf — just don't expect it to auto-format unless you run npm install here first.

sample.ts

Look at it. Extra spaces, inconsistent quotes, tightly-packed operators, arrow functions with unnecessary braces. Prettier fixes all of that. In a project where prettier is configured (your NestJS or Vue project), opening this file and saving it with :w would instantly reformat it.

Now open a TypeScript or Vue file from your real project in another split (<leader>| or <leader>-). Make some small, obviously bad formatting change — add extra spaces around an assignment, use wrong quotes. Save with :w. Watch Prettier fix it automatically. That auto-format-on-save is the formatting.prettier LazyVim extra in action — no keybind, no command, just save.

Back in any file: <leader>cf forces an immediate format of the current buffer, regardless of whether auto-format is on or off. Useful after pasting code from somewhere that brought its own formatting baggage. New move unlocked.

<leader>uf toggles auto-format globally — if Prettier's opinionated rewrites on every save are bothering you during a particular editing session, turn it off here. The toggle persists for the session. <leader>uf again to re-enable. New move unlocked.

<leader>uF toggles auto-format for the current buffer only — affects just this file, leaves the global setting intact. Handy when one specific file is generated code or legacy you don't want touched, but everything else should still format on save. New move unlocked.

Cursor on the file below, gf to load the next level.

02-linting.md
