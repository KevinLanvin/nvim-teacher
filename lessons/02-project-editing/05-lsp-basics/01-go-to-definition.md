Welcome to Campaign 5: LSP Basics. Every level so far has ended the same way: "cursor on the file below, gf to load it." Time to name that move properly — gf opens whatever file path sits under your cursor, plain text, no LSP involved. You've used it dozens of times already. New move unlocked, officially.

gd is gf's smarter cousin: instead of a literal path, it jumps to wherever a symbol under your cursor is actually *defined* — a function, a variable, a type, wherever the language server says it lives, even in a completely different file. When there's exactly one definition it jumps straight there; when there's more than one candidate it opens a searchable Snacks picker instead of guessing. You'll feel both in the next level.

Cursor on the file below, gf to load it — one last plain-path jump before gd takes over.

02-cart.vue
