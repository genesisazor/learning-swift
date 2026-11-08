# Color Picker

**Week 4** · SwiftUI · Nov 5–8, 2026 · Class activity

Mix a color by adjusting red, green and blue. Each color has a toggle to turn it on or off and a slider to set its intensity. A Reset button returns everything to full.

## What I built
- Six `@State` values: an on/off `Bool` and an intensity `Double` for each color
- A `Toggle` and `Slider` for each color, connected with `$` bindings
- A preview rectangle colored with `Color(red:green:blue:)`, using ternaries so a color counts as 0 when its toggle is off
- Sliders tinted to match their color, dimmed when the toggle is off
- Hidden toggle labels with `.labelsHidden()`
- A Reset button that sets all six values back

## What I learned
- `@State` properties must be declared inside the view that owns them
- `$` creates a two-way binding: the control both reads and writes the value
- The ternary operator: `condition ? valueIfTrue : valueIfFalse`
- Type inference: `true` becomes a `Bool` and `1.0` a `Double` automatically
- A button's braces hold code to run, not views to show
- Changing data with `=` is enough. SwiftUI redraws the screen on its own
- Parameters vs. arguments: `value` and `in` are parameters, `$redValue` and `0...1` are arguments
