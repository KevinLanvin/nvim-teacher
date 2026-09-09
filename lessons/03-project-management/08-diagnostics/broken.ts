// TODO: move this into a shared math utils module

function calculateTotal(price: number, quantity: number): number {
  return price * quantity
}

const total = calculateTotal(10, 'two')

console.log(total)

// FIXME: doesn't account for discounts yet