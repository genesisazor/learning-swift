# Onboarding Flow

**Week 3** · SwiftUI · Oct 27, 2026 · Apple tutorial: [Design an interface](https://developer.apple.com/tutorials/develop-in-swift/design-an-interface)

Two swipeable onboarding screens: a welcome page with an SF Symbol graphic, and a features page with a list of feature cards, over a custom gradient background.

## What I built
- `WelcomePage`: an SF Symbol layered on a rounded rectangle with a `ZStack`, plus a title and description
- `FeaturesPage`: a title and two `FeatureCard`s, pushed to the top with a `Spacer`
- `FeatureCard`: a reusable custom view with `iconName` and `description` properties
- A `TabView` with `.tabViewStyle(.page)` to swipe between the two pages
- Custom `gradientTop` and `gradientBottom` color sets in Assets, used in a `Gradient` background

## What I learned
- Using `.border` to see how much space a view takes up, and how padding changes it
- A view's ideal size vs. shapes that fill all available space
- `.frame(width:height:)` for fixed sizes and `.frame(maxHeight: .infinity)` for flexible ones
- Padding on specific edges: `.padding(.top)`, `.padding(.trailing, 10)`
- Splitting an app into several view files
- `.foregroundStyle` cascades down to child views
- A `Spacer` in an `HStack` expands to fill the row, which is why each card stretches to full width
