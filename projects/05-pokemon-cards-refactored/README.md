# Pokémon Cards (Refactored)

**Week 2** · SwiftUI · Built from the instructor's refactored starter code

A second version of the Pokémon cards app, completing the class's refactored starter code. Compare it with my own version in [`04-pokemon-cards`](../04-pokemon-cards).

## What's different from my version
- `Pokemon` conforms to `Identifiable` with a `UUID` id, so `ForEach(pokemonData)` doesn't need `id:`
- The card's background color comes from a computed property using a `switch` on the Pokémon's type, instead of a dictionary lookup
- One `case` can match several values: `case "Grass", "Grass/Poison":`
- The border is drawn with `.overlay` and `.stroke(lineWidth:)` instead of a layered `ZStack`

## What I learned
- Reading and matching argument labels ("have ... expected ..." errors)
- Nesting order: struct → body → ScrollView → VStack → ForEach
- A view's own computed property is used by name, not with `Color.`
