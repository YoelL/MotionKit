# MotionKit

## Installation

To install this package, import `url here` in Swift Package Manager.

## Usage Example

```swift

struct ShakeEffectView: View {

    @State var bounces: Int = 0
    @State var animate: Bool = false

    var body: some View {
        VStack(spacing: 100) {
            Card(name: "Shake It")
                .shakeEffect(animate ? 1 : 0)
                .animation(.shake ,value: animate)
                .onTapGesture {
                    animate.toggle()
                }
        }
    }
}

```
