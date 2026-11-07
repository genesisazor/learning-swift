# House

**Week 1** · SwiftUI · Oct 15, 2026

A simple house scene drawn with SwiftUI shapes: orange walls, a red triangle roof, a door with a doorknob, two windows, and a sun in a light blue sky.

## What I built
- A custom `Triangle` shape for the roof
- Walls, door and windows from `Rectangle` and `RoundedRectangle`
- Window frames drawn with `.overlay` and `.stroke`
- A nested `ZStack`: the sky and sun in the outer one, the house in the inner one
- Positioning with `.offset`, calculated so the roof sits flush on the walls

## What I learned
- Layering views with `ZStack`, back to front
- Using `.offset` math to line shapes up: a shape's edge is its center offset plus or minus half its height
- `.ignoresSafeArea()` to fill the whole screen with a background
- Grouping related shapes into their own `ZStack` to keep the layout organized
