You've already used gd (go to definition) in Act 2. There are three more go-to moves that fill different niches.

Open main.ts — gf it below.

main.ts

Cursor on `Rectangle` in the `new Rectangle(5, 3)` call. You know gd takes you to where Rectangle is defined (the class body in implementation.ts). But what if you want to jump to the *type* that constrains a variable, not the value itself? gy does that. Move the cursor to `shapes` on the `const shapes = [...]` line. Press gy — the language server resolves the inferred type of `shapes` and jumps to where that type is defined. For an array of objects implementing Shape and Labeled, it jumps into types.ts. New move unlocked. Press Ctrl-o to come back (that's the jumplist, already taught in Act 1 Move).

gI goes to the implementation of an interface or abstract method. Open types.ts — gf it below — and cursor on the `Shape` interface name.

types.ts

Press gI. The language server finds every class that implements Shape and opens a picker listing Rectangle and Circle. Select one to jump to that class. If there's only one implementation in a project, it jumps directly without the picker. New move unlocked.

Back in implementation.ts (Ctrl-o a couple of times or gf it). The `]]` and `[[` keys jump between references to the symbol under the cursor — similar to gr (go to references) but instead of opening a picker, they cycle you through each reference in sequence. Cursor on `describeShape` in the function definition. Press `]]`. The cursor jumps to the first call site in main.ts. Press `]]` again for the next. `[[` steps backward. As you land on each reference, the matching symbols in the file highlight so you can see them all at a glance. New move unlocked.

Cursor on the file below, gf to load the next level.

03-signature-and-info.md
