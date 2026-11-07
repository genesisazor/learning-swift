import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        //Make it scrollabe
        ScrollView {
            VStack(spacing: 20) {
                //Code here
                //Pikachu
                //  PokemonCard(imageName:"Pikachu", name: "Pikachu!", hp: 60, attackName: "Thunder Bolt", damage: 150, attackDescription: "Electric-type special move.", pokemonDescription: "When several of these Pokemon gather their electricity can cause lightning storms.")
                //Raichu
                //  PokemonCard(imageName:"Raichu", name: "Raichu!", hp: 90, attackName: "Thunder", damage:180, attackDescription: "This Pokemon also does 50 damage to itself.", pokemonDescription: "Its tal serves as a ground to protect itself from its own high voltage power.")
                
                //ForEach loop is used to iterate through the array. It creates an instance for each individual item in the array and gives each item's stats (name, hp etc) to the struct PokemonCard to be drawn as a finished card.
                ForEach(pokedex, id: \.name){ individual in
                    PokemonCard(imageName: individual.imageName, name: individual.name, element: individual.element, hp: individual.hp, attackName: individual.attackName, damage: individual.damage, attackDescription: individual.attackDescription, pokemonDescription:individual.pokemonDescription)
                }
            }
        }
        
        .padding()
    }
}

//Refactoring. Make a Pokemon struct to serve as the blueprint for each Pokemon's data.
//It only stores data. PokemonCard handles styling.

struct Pokemon {
    let imageName: String
    let name: String
    let element: String
    let hp: Int
    let attackName: String
    let damage: Int
    let attackDescription: String

    let pokemonDescription: String
}

//Creates a bank of element colors
let elementColors: [String: Color] = [
    "Electric": .yellow,
    "Fire": .orange,
    "Rock": .gray,
    "Grass": .green,
    "Psychic": .purple
    
    ]


//Create an array which will be a list of all Pokemon.AKA Pokedex
let pokedex: [Pokemon] = [
    //Pikachu data
    Pokemon(imageName:"Pikachu", name: "Pikachu!", element:"Electric", hp: 60, attackName: "Thunder Bolt", damage: 150, attackDescription: "Electric-type special move.", pokemonDescription: "When several of these Pokemon gather their electricity can cause lightning storms.") ,
    //Raichu data
    Pokemon(imageName:"Raichu", name: "Raichu!", element:"Electric", hp: 90, attackName: "Thunder", damage:180, attackDescription: "This Pokemon also does 50 damage to itself.", pokemonDescription: "Its tail serves as a ground to protect itself from its own high voltage power.") ,
    //Pidgey data
    Pokemon(imageName:"pidgey", name: "Pidgey!", element:"Rock", hp: 60, attackName: "Gust", damage:20, attackDescription: "", pokemonDescription: "It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.") ,
    //Charmander data
    Pokemon(imageName:"charmander", name: "Charmander!", element:"Fire", hp: 60, attackName: "Ember", damage:30, attackDescription: "Discard a fire energy from this Pokemon.", pokemonDescription: "The flame on its tail indicates Charmander's life force. If it is healthy, the flame burns brightly.") ,
    //Bulbasaur data
    Pokemon(imageName:"bulbasaur", name: "Bulbasaur!", element:"Grass", hp: 70, attackName: "Razor Leaf", damage:20, attackDescription: "Sharp-edged leaves are launched to slash at the foe. It has a high critical-hit ratio.", pokemonDescription: "For some time after its birth, it grows by gaining nourishment from the seed on its back.") ,
    //Abra data
    Pokemon(imageName:"Abra", name: "Abra!", element:"Psychic", hp: 40, attackName: "Psyshock", damage:10, attackDescription: "Flip a coin. If heads, the defending Pokemon is now paralyzed.", pokemonDescription: "IIt teleports itself away from danger, making it difficult to capture.") ,
]

//Using the ForEach loop All items in the pokedex are passed through this struct and then displayed accordingly.
struct PokemonCard: View {
    
    let imageName: String
    let name: String
    let element: String
    let hp: Int
    let attackName: String
    let damage: Int
    let attackDescription: String
    
    let pokemonDescription: String
    
    var body: some View {
        
        ZStack {
            // Back layer yellow rectangle
            Color.yellow
            //Middle layer is a rectangle with color by element
           (elementColors[element] ?? . gray)
                .padding(8)
            
            VStack(spacing: 10) {
                
                // Top row
                HStack {
                    Text(name)
                        .font(.headline)
                    
                    Spacer()
                    
                    Text("HP \(hp)")
                        .font(.subheadline)
                }
                
                // Pokemon image
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                
                Divider()
                
                // Attack name + damage
                HStack {
                    Text(attackName)
                        .font(.subheadline)
                        .bold()
                    
                    Spacer()
                    
                    Text("\(damage)")
                        .bold()
                }
                
                // Attack description
                Text(attackDescription)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                
                Divider()
                
                // Pokemon description (flavor text)
                Text(pokemonDescription)
                    .font(.caption2)
                    .italic()
                    .multilineTextAlignment(.leading)
                
                
                
            }
            .padding()
            .padding(8)
            
        }
        .cornerRadius(12)
        .frame(width: 220)
    }
}



#Preview {
    ContentView()
}
