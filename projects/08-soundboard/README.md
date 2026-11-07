# Soundboard

**Week 3** · SwiftUI · Nov 2, 2026 · Weekend assignment (Xcode project name: VariableImageGallery)

A scrollable gallery of images. Tap an image to play its sound, tap it again to pause, or tap a different image to switch sounds.

## What I built
- A `GalleryItem` model pairing an image with a sound, made `Identifiable` with a `UUID`
- A `picList` array of items, shown with `ForEach`
- A reusable `CustomImage` view with a border and shadow
- Tap handling with `.onTapGesture`, calling a play/pause function
- Audio playback with `AVFoundation` and `AVAudioPlayer`
- Extra sound buttons I added myself beyond the starter code

## What I learned
- `@State` for values that change while the app runs (the current player and sound)
- Calling a function with a labeled argument: `playSong(named: soundName)`
- `.stop()` vs `.pause()`
- Default property values: `borderColor` can be left out of `CustomImage(...)`
- Optionals (`AVAudioPlayer?`), `if let`, and `do` / `try` / `catch` for code that might fail
- Adding `.mp3` files to an app target so `Bundle.main` can find them
