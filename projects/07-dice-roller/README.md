# Dice Roller

**Week 3** · SwiftUI · Oct 31, 2026 · Apple tutorial: [Update the UI with state](https://developer.apple.com/tutorials/develop-in-swift/update-the-ui-with-state)

Roll up to five dice. Each die has its own Roll button, and plus/minus buttons add or remove dice.

## What I built
- `DiceView`: one die with an `@State` number of pips and a Roll button
- `ContentView`: an `@State` number of dice, shown with a `ForEach` over a range
- Add and Remove buttons that are disabled at the limits (1 and 5 dice)
- Animated changes with `withAnimation`
- White dice with black pips, using SF Symbols and two-color `.foregroundStyle`

## What I learned
- `@State`: a value the view watches, so changing it redraws the screen
- The core pattern: tap a button → change a `@State` value → SwiftUI redraws
- `Button` with an action in braces
- `Int.random(in: 1...6)` and ranges with `...`
- `+=` and `-=`, `==`, and `Bool` values with `.disabled(...)`
- Default property values make a property optional in the initializer, so `DiceView()` needs no arguments
- `ForEach` over a range, with `_ in` / an unused item name
- Flexible frames and `.aspectRatio` so dice shrink to fit
- Modifier placement: modifiers after `body` closes have nothing to attach to
