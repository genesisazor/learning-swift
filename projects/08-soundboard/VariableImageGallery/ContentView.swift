import SwiftUI

import AVFoundation

// model used to pair image + sound
struct GalleryItem: Identifiable {

    let id = UUID() // this needs to be set to something that will allow every item/entry to have a unique id
    let imageName: String
    let soundName: String
}

// Your data
let picList: [GalleryItem] = [
    GalleryItem(imageName:"bombimage",soundName:"FunkmasterFlex Bomb"),
    GalleryItem(imageName:"RobloxPic",soundName:"RobloxOof"),
    GalleryItem(imageName:"sonicRing",soundName:"SonicRingSound"),
    GalleryItem(imageName: "faaah", soundName: "faaah"),
    GalleryItem(imageName: "airhorn", soundName: "airhorn"),
    GalleryItem(imageName: "mr krabs", soundName: "mr krabs"),
    GalleryItem(imageName: "rip", soundName: "rip"),
]

struct ContentView: View {
    // Audio player state
    // the variables below will need the @State keyword. Add it to each
    @State private var audioPlayer: AVAudioPlayer?
    @State private var currentPlayingSound: String?

    // Toggle play/pause
    func togglePlayPause(soundName: String) {

        if currentPlayingSound == soundName {
            if audioPlayer?.isPlaying == true {
                audioPlayer?.pause()
            } else {
                audioPlayer?.play()
            } //What if the audio sample has some seconds of silence?
        } else {
            // Stop previous sound if different one is tapped
            if let currentPlayer = audioPlayer, currentPlayer.isPlaying {
                currentPlayer.stop()
            }
            
            playSong(named:soundName)// call the playSong() function here and pass in the value: named:soundName
        }
    }

    // Play function
    func playSong(named soundName: String) {

        // this line basically says: "Find the MP3 file inside my app"
        if let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                audioPlayer?.stop() // add a method to stop previous sound
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
                currentPlayingSound = soundName // Track the currently playing sound
               
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        } else {
            print("File not found: \(soundName).mp3")
        }
    }

    var body: some View {
        ScrollView {
            VStack {
                // what are we trying to loop through? Replace the ___ below
                ForEach(picList) { item in
                    // Use the CustomImage view here. Make sure every required property is provided.
                    // Hint: look at CustomImage.swift to see which properties have default values
                    // and which don't. Use item.imageName for the image.
                    CustomImage(imageName: item.imageName, borderSize: 10,shadowRadius: 20)
                        .onTapGesture {
                            togglePlayPause(soundName: item.soundName)
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
