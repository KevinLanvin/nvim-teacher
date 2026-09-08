<!-- Level 5: Folding. This level is longer than usual — folding needs real code to work with, so you've got a full Vue component below. -->

<!-- In this config, folds exist but start fully open. Nothing looks collapsed yet — that's foldlevel=99 keeping everything expanded by default. You'll close folds first, then learn to navigate them. -->

<!-- New move unlocked: zc closes the fold at your cursor position. Cursor on the <template> line below and press zc — the entire template body collapses into a single folded line. -->

<template>
  <div class="storefront">
    <header class="topbar">
      <h1>Storefront</h1>
      <nav>
        <a href="/">Home</a>
        <a href="/shop">Shop</a>
        <a href="/cart">Cart</a>
      </nav>
    </header>

    <main class="products">
      <section class="featured">
        <h2>Featured</h2>
        <ul>
          <li>Widget A</li>
          <li>Widget B</li>
          <li>Widget C</li>
        </ul>
      </section>
    </main>
  </div>
</template>

<!-- zo reopens a closed fold. Cursor on that collapsed <template> line and press zo — everything expands back. New move unlocked. -->

<!-- za toggles: closes if open, opens if closed. Press it a couple of times on the <template> line to get the feel. New move unlocked. -->

<!-- Each function in <script setup> below is its own fold too — same foldmethod=indent, just applied to function bodies instead of markup. Cursor on the loadItems line and press zc to collapse just that function. Press zo to reopen it. -->

<script setup>
import { ref, computed } from "vue";

const items = ref([]);
const cart = ref([]);

const total = computed(() => cart.value.reduce((s, i) => s + i.price, 0));

function loadItems() {
  items.value = [
    { id: 1, name: "Widget A", price: 9.99 },
    { id: 2, name: "Widget B", price: 14.99 },
    { id: 3, name: "Widget C", price: 4.99 },
  ];
}

function addToCart(item) {
  cart.value.push(item);
}

function removeFromCart(id) {
  cart.value = cart.value.filter((i) => i.id !== id);
}
</script>

<!-- zM closes every fold in the file at once — collapses both the template body and all three function bodies in one shot. Good for getting a high-level view of a big file. Try it now. New move unlocked. -->

<!-- zR is the mirror: reopens every fold at once. New move unlocked. -->

<!-- zj and zk jump between folds without opening them. Close a few with zM, then press zj — jumps to the next fold boundary. zk goes the other direction. Useful for scanning a collapsed file without having to scroll past the hidden content. New move unlocked. -->

<!-- Ready for the next level? Cursor on the file below, gf to load it. -->

<!-- 06-go-actions.md -->
