# Book of Swift

**Week 2** · SwiftUI · Oct 20, 2026 · Built with a classmate

A book cover drawn with SwiftUI shapes: a red spine, a blue cover with yellow title and author bars, and a page edge.

## What I built
- An `HStack(spacing: 0)` placing the spine, cover and pages side by side with no gaps
- A `ZStack` cover: a rounded rectangle in back, a `VStack` of title and author bars on top
- Borders using `.overlay` with a stroked `RoundedRectangle`
- Text placed on the bars with a second `.overlay`
- A `Spacer` pushing the title bar to the top and the author bar to the bottom

## What I learned
- Nesting stacks: `HStack` for side by side, `ZStack` for layers, `VStack` for top to bottom
- How `Spacer` fills available space to push views apart
- Stacking multiple `.overlay` modifiers on one view

## Still to improve
- Make the page edge tall and thin to match the book's height, with lines for individual pages
