import { describe, test, expect } from 'vitest'

function add(a: number, b: number): number {
  return a + b
}

function multiply(a: number, b: number): number {
  return a * b
}

function clamp(value: number, min: number, max: number): number {
  return Math.max(min, Math.min(max, value))
}

describe('math utilities', () => {
  test('add works correctly', () => {
    expect(add(2, 3)).toBe(5)
    expect(add(-1, 1)).toBe(0)
    expect(add(0, 0)).toBe(0)
  })

  test('multiply works correctly', () => {
    expect(multiply(3, 4)).toBe(12)
    expect(multiply(-2, 3)).toBe(-6)
    expect(multiply(0, 100)).toBe(0)
  })

  test('clamp stays within bounds', () => {
    expect(clamp(5, 0, 10)).toBe(5)
    expect(clamp(-5, 0, 10)).toBe(0)
    expect(clamp(15, 0, 10)).toBe(10)
  })

  test('intentional failure — shows what a failing test looks like', () => {
    expect(add(1, 1)).toBe(3)
  })
})
