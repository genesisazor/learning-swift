# Pokémon Cards

**Week 2** · SwiftUI

A scrollable set of Pokémon cards. Each card's background color comes from the Pokémon's element, with a yellow border.

## What I built
- A `Pokemon` struct (data model) and a `pokedex` array holding each Pokémon's data
- A custom `PokemonCard` view that displays one Pokémon
- A `ForEach` that creates one card per Pokémon
- An element-to-color lookup (`elementColors` dictionary with a `??` fallback)
- A layered border using a `ZStack`: yellow back layer, element color inset with padding, content on top
- A `ScrollView` so all six cards fit

## What I learned
- Separating data (the struct and array) from display (the view)
- Struct vs. instance, properties, labels and values
- `ForEach` vs. a regular `for` loop
- How modifier order and padding affect layout
