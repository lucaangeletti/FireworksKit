# FireworksKit

FireworksKit makes it easy to add amazing particle effects to your UIKit app.



[![Image](https://img.shields.io/npm/l/express.svg)](https://github.com/appzYourLife/FireworksKit/blob/master/LICENSE)


![Image](https://user-images.githubusercontent.com/10343189/28745428-a0f9d96a-7478-11e7-8688-242a06d0d3c7.gif)

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
- Xcode 9+



## Looking for more effects?

You can open an Issue and request a new effect.
