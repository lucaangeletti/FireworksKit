<p align="center">
<img src="https://user-images.githubusercontent.com/10343189/28755302-c7b3137a-7557-11e7-8d83-61bf94a28480.png" width="200">
</p>

 
# FireworksKit

FireworksKit makes it easy to add amazing particle effects to your UIKit app.



[![Image](https://img.shields.io/npm/l/express.svg)](https://github.com/appzYourLife/FireworksKit/blob/master/LICENSE)
![Xcode 8.3.3+](https://img.shields.io/badge/Xcode-8.3.3%2B-blue.svg)
![iOS 9.0+](https://img.shields.io/badge/iOS-9.0%2B-blue.svg)
![Swift 3.1+](https://img.shields.io/badge/Swift-3.1%2B-orange.svg)

![Image](https://user-images.githubusercontent.com/10343189/28745428-a0f9d96a-7478-11e7-8688-242a06d0d3c7.gif)

## Usage via Code

First of all you need to

```swift
import FireworksKit
```

then into the `viewDidLoad` of your `UIViewController`

```swift
override func viewDidLoad() {
    super.viewDidLoad()
```
```swift
    // 1. create a FireworksView 
    let fireworksView = FireworksView(frame: view.frame)
```    
```swift    
    // 2. create a particle effect
    let particleEffect = ParticleEffect(type: .rain) // you can also use .snow, .smoke or .fire
```    
```swift
    // 3. apply an effect
    fireworksView.particleEffect = particleEffect
```    
```swift
    // 4. add the FireworksView to your view
    view.addSubview(fireworksView)
```    
```swift
}
```
#### Changing color

You can change the color of the particle effect

```swift
fireworksView.particleEffect?.particleColor = .green
```

## Usage with Interface Builder

TODO

## Integration

Add this line to your Podfile

```
pod 'FireworksKit', :git => 'https://github.com/lucaangeletti/FireworksKit.git'
```

## Requirements

- iOS 9.0+
- Xcode 8+

## Looking for more effects?

You can open an Issue and request a new effect.

## License

FireworksKit is released under an MIT license. See [License.md](/LICENSE) for more information.
