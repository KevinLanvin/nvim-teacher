yy copies (yanks) this whole line. New move unlocked.

    a throwaway line, delete this one next

Delete the throwaway line above with dd, then press p — notice it pastes what you just DELETED, not what you yanked earlier. Delete and yank share the same default clipboard, called a register.

Now press "0p instead — that always pastes your last YANK specifically, no matter what you've deleted since. New combo unlocked: "0 explicitly picks a register before the action.

That " is doing real work: it lets you pick WHICH register an action reads from or writes to. The common ones worth knowing: "" is the default (unnamed) register, holding whatever you last yanked or deleted; "0 holds your last yank only, untouched by later deletes; "1 through "9 are a rolling history of your last several deletes; "_ is the black hole — delete into it and nothing gets overwritten, useful when you want to delete without clobbering what you yanked; "a through "z are named registers you choose yourself, for keeping several things around at once; "+ and "* both reach your system clipboard, for pasting into other apps.

Campaign cleared — Commands is fully unlocked. Next up, Campaign 4: Visual mode. Cursor on the file below, gf to load it.

../04-visual-mode/01-character-visual.md
