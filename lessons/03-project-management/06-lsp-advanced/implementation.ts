import { Shape, Labeled } from './types'

export class Rectangle implements Shape, Labeled {
  label = 'Rectangle'

  constructor(
    private w: number,
    private h: number
  ) {}

  area(): number {
    return this.w * this.h
  }

  perimeter(): number {
    return 2 * (this.w + this.h)
  }
}

export class Circle implements Shape, Labeled {
  label = 'Circle'

  constructor(private r: number) {}

  area(): number {
    return Math.PI * this.r * this.r
  }

  perimeter(): number {
    return 2 * Math.PI * this.r
  }
}

export function describeShape(shape: Shape & Labeled): string {
  return `${shape.label}: area=${shape.area().toFixed(2)}, perimeter=${shape.perimeter().toFixed(2)}`
}
