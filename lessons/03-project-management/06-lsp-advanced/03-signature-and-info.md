Two more LSP moves, then a quick diagnostic for the server itself.

Open main.ts — gf below.

main.ts

Cursor anywhere on the `new Rectangle(5, 3)` call. Press gK (capital K). A popup appears showing the Rectangle constructor's signature — the parameter names, their types, which is optional. It's the same popup you get from hovering (K), but specifically for the function/constructor signature. Useful when you're on a call site and forgot the parameter order. New move unlocked.

Now press A on `new Rectangle(5, 3)` to enter insert mode after the opening paren (or use i and move manually into the argument list). While you're inside the parentheses in insert mode, press <C-k>. The same signature popup appears — this time without leaving insert mode. You can read the parameter names while you're actively typing the arguments. Press jk to escape back to normal mode. New move unlocked.

<leader>cA is "source action" — a broader category than <leader>ca (code action). Code actions are context-specific fixes for the symbol under the cursor. Source actions are server-level operations that apply to the whole file: things like "add all missing imports", "remove all unused variables", or TypeScript-specific refactors that the language server exposes at file scope rather than per-symbol. Try <leader>cA now — a picker opens with whatever source actions the attached server offers for this file. New move unlocked.

<leader>cl opens a Snacks picker showing every LSP server currently attached to this buffer — name, version, status, and root directory. In this campaign folder you'll see vtsls rooted at the repo's git root (or the folder, depending on which lock file it found). Good for debugging why a language feature isn't working — if the server you expect isn't listed, it hasn't attached. New move unlocked.

Campaign cleared — LSP Advanced is fully unlocked. Next up, Campaign 7: ESLint and Prettier. Cursor on the file below, gf to load it.

../07-eslint-prettier/01-formatting.md
