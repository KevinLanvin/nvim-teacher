import { Rectangle, Circle, describeShape } from './implementation'

const shapes = [
  new Rectangle(5, 3),
  new Circle(4),
  new Rectangle(10, 2),
]

for (const s of shapes) {
  console.log(describeShape(s))
}
