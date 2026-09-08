<!-- Level 2: a real two-file Vue + TS setup. vtsls and vue_ls are genuinely running against this file — nothing below is simulated. -->

<template>
  <ul>
    <li v-for="item in items" :key="item.id">
      {{ item.name }} — {{ formatPrice(item.price) }}
    </li>
  </ul>
  <p>Total: {{ formatPrice(total) }}</p>
</template>

<!-- formatPrice is used twice above but never imported — the language server is underlining it right now. Don't hunt for it by eye: ]d jumps to the next diagnostic in the file, [d to the previous one, wherever your cursor currently is. New move unlocked. -->

<!-- ]e/[e do the same but only stop on errors, skipping warnings and hints — ]w/[w are the warning-only equivalent. Same bracket-pair pattern as ]q/[q for quickfix and ]b/[b for buffers. -->

<!-- Cursor landed on formatPrice? <leader>ca opens the code action menu (a Snacks picker, since vim.ui.select is wired to it in this config) — pick "Add import from ./utils" and the import line appears on its own. New move unlocked. -->

<script setup lang="ts">
import { ref, computed } from "vue";

interface CartItem {
  id: number;
  name: string;
  price: number;
}

const items = ref<CartItem[]>([
  { id: 1, name: "Widget A", price: 9.99 },
  { id: 2, name: "Widget B", price: 14.99 },
]);

const total = computed(() =>
  items.value.reduce((sum, item) => sum + item.price, 0),
);

// Try it: on the line below, type items.value[0]. (with the trailing dot) and pause —
// blink.cmp pops up id/name/price, pulled straight from the CartItem interface above.
// <C-n>/<C-p> cycles through them — not Tab, this config's blink.cmp preset (`enter`)
// keeps Tab reserved for jumping between snippet fields, not for cycling suggestions.
// <CR> or <C-y> accepts whichever one is highlighted. New move unlocked.
</script>

<!-- Import fixed? Cursor on either formatPrice call above, press gd. Only one function
     in the whole project is named formatPrice, so this jumps straight there — no picker,
     Snacks auto-confirms single matches. That's a real cross-file jump, not a gf — it
     lands you in 03-utils.ts, and that's where the next level continues. -->
