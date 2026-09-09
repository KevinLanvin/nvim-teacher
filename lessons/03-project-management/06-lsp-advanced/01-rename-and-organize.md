Welcome to Campaign 6: LSP Advanced. Act 2 covered the basics — gd, K, gr, code actions, diagnostics. This campaign is the moves you reach for once the basics are automatic.

The practice files for this campaign are implementation.ts and types.ts. Let's start with implementation.ts — cursor on the filename, gf.

implementation.ts

You're in a TypeScript file with two classes and a function. The Rectangle class has two private fields named `w` and `h` — short, cryptic. Let's rename them properly.

Cursor on `w` in the constructor parameter `private w: number`. Press <leader>cr. A prompt appears at the bottom of the screen with the current name pre-filled. Clear it and type `width`, then press enter. Every reference to `w` in the class — the parameter, the `this.w` in area(), the `this.w` in perimeter() — renames simultaneously. The LSP does a project-wide rename, not a text substitution. New move unlocked.

Now cursor on `h` and do the same: <leader>cr, type `height`. Both area() and perimeter() update. Give `r` in Circle the same treatment — rename it to `radius`.

<leader>cR is "rename file" — it renames the actual file on disk AND updates every import statement across the project that references the old filename. Try it: <leader>cR and rename implementation.ts to shapes.ts. Watch the import in main.ts update automatically. Then rename it back to implementation.ts with <leader>cR again before moving on. New move unlocked.

Now open main.ts — the variable `s` in the loop is too short. Cursor on `s` in `for (const s of shapes)`, press <leader>cr, rename to `shape`. The loop body's `describeShape(s)` call updates too. All in one operation.

Back in implementation.ts, <leader>co runs "organize imports" — sorts imports alphabetically and removes unused ones. In this file it's already clean, so not much visible change. Try it on one of your own TypeScript files after a long editing session where you removed some code — it clears the dead imports at the top automatically. New move unlocked.

Cursor on the file below, gf to load the next level.

02-navigation.md
