Formatting is about style. Linting is about correctness — unused variables, missing dependencies, rules your team enforces. ESLint runs as an LSP server in this config (the linting.eslint extra), so its output looks and behaves exactly like any other LSP diagnostic.

Open a TypeScript or Vue file from your real project — one that actually has some ESLint violations. If nothing's jumping out, try leaving an unused import at the top, or write a `var` instead of `const`, or call a function with the wrong number of arguments. Save the file. ESLint's diagnostic marks appear in the gutter and inline.

You've used ]d and [d before (Act 2, LSP Basics) — they jump between LSP diagnostics of any severity. ESLint violations show up in the same queue. Jump to the nearest one with ]d. The cursor lands on the offending line.

Press K on the lint error. The hover popup shows you the ESLint rule that fired — something like `no-unused-vars` or `@typescript-eslint/no-explicit-any` — along with a brief explanation. That's your answer to "what rule is this and why does it exist". New move unlocked.

<leader>ca on a lint error opens the code action menu. ESLint often provides a "Fix this no-unused-vars problem" action right there. Select it — ESLint applies the fix automatically. For a rule that ESLint knows how to auto-fix, this is faster than editing the line yourself. New move unlocked.

ESLint also auto-fixes on save in this config — `lazyvim_eslint_auto_format` is true by default, which means the same class of auto-fixable violations (missing semicolons, wrong quotes, fixable style rules) that <leader>ca would offer get applied every time you :w. Prettier handles formatting; ESLint handles fixable violations; together they run on every save without you pressing anything.

]w and [w jump between warnings specifically (as opposed to ]e/[e for errors and ]d/[d for any diagnostic). Useful when you've resolved all errors but want to sweep through the remaining warnings without mixing them in with everything else. New move unlocked.

Campaign cleared — ESLint and Prettier are fully unlocked. Next up, Campaign 8: Diagnostics. Cursor on the file below, gf to load it.

../08-diagnostics/01-trouble.md
