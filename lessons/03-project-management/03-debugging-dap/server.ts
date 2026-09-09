function multiply(a: number, b: number): number {
  return a * b
}

function sumSquares(numbers: number[]): number {
  let total = 0
  for (const n of numbers) {
    const squared = multiply(n, n)
    total += squared
  }
  return total
}

function doubleAll(numbers: number[]): number[] {
  return numbers.map(n => multiply(n, 2))
}

function main(): void {
  const data = [1, 2, 3, 4, 5]

  const result = sumSquares(data)
  console.log(`Sum of squares: ${result}`)

  const doubled = doubleAll(data)
  console.log(`Doubled: ${doubled.join(', ')}`)
}

main()
