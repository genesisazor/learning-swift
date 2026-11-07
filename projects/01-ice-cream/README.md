# Ice Cream Cone

**Week 1** · SwiftUI · Oct 15, 2026

An ice cream cone drawn entirely with SwiftUI shapes: a two-scoop cone with a cherry and sprinkles on a light blue background.

## What I built
- A custom `Triangle` shape (a `Shape` with a `path(in:)` function) flipped point-down for the cone
- Two `Circle` scoops and a cherry
- Sprinkles made from rotated `Capsule`s
- Layers stacked with `ZStack` and positioned with `.offset`

## What I learned
- `ZStack` draws its children back to front, in the order they're written
- `.frame` sets a shape's size and `.offset` moves it from the center
- `.rotationEffect` turns a view by a number of degrees
- Making a custom shape by connecting points with `move(to:)` and `addLine(to:)`
