<img src="https://user-images.githubusercontent.com/10343189/28755261-01a33e6c-7557-11e7-8eaf-8a6186e75a6c.png" width="200">

# FireworksKit

FireworksKit makes it easy to add amazing particle effects to your UIKit app.

![Image](https://user-images.githubusercontent.com/10343189/28745428-a0f9d96a-7478-11e7-8688-242a06d0d3c7.gif)

## Usage via Code

Into the `viewDidLoad` of your `UIViewController`

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

TODO

## Requirements

- iOS 9.0+
- Xcode 9+



## Looking for more effects?

You can open an Issue and request a new effect.
