// Level 3: you didn't gf here — gd brought you across files on its own. Same idea,
// LSP-powered instead of plain-text.

/**
 * Formats a number as a USD price string, e.g. 9.99 -> "$9.99".
 */
export function formatPrice(amount: number): string {
  return `$${amount.toFixed(2)}`
}

// Cursor on formatPrice above, press K — a hover popup shows the signature and that
// JSDoc comment, pulled live from the language server. New move unlocked. Press K a
// second time and focus moves into the popup itself, so you can scroll a long one with
// normal motions instead of it just flashing past.

// gr is the reverse of gd: cursor on formatPrice above, press gr — this function has
// two call sites back in Cart.vue, so this time the Snacks picker actually opens
// instead of auto-jumping. Enter jumps to whichever one you land on. New combo
// unlocked: gd asks "where does this come from", gr asks "who else uses this".

// Campaign cleared — LSP Basics is fully unlocked: gf for plain-path jumps, gd/gr for
// definition- and reference-hopping across the whole project, K for hover docs, blink.cmp
// completion (<C-n>/<C-p>/<CR>, Tab reserved for snippets), ]d/[d (and the ]e/[e, ]w/[w
// severity-filtered versions) for diagnostic navigation, and <leader>ca for applying a
// suggested fix. Act 2 is fully cleared. Act 3 is next: testing, debugging, git, and the
// full language-specific LSP deep dive — where these same moves get stack-specific teeth.
