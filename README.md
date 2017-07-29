# FireworksKit

FireworksKit makes it easy to add amazing particle effects to your UIKit app.

(https://giphy.com/embed/3o6vXQSeAZ4xxQ1s9a)


## Usage

Into the `viewDidLoad` of your `UIViewController`

```swift
override func viewDidLoad() {

    super.viewDidLoad()

    // 1. create a FireworksView 
    let fireworksView = FireworksView(frame: view.frame)
        
    // 2. add the FireworksView to your view
    view.addSubview(fireworksView)
        
    // 3. select an effect
    fireworksView.particleEffect = .rain // you can also use .snow, .smoke or .fire
    
}
```
## Changing color

You can change the color of the particle effect

```swift
fireworksView.particleColor = .green
```

## Cocoapod

## Requirements

- iOS 9.0+
- Xcode 9



## Looking for more effects?

You can open an Issue and request a new effect.
