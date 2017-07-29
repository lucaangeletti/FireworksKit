# FireworksKit
Amazing special effects for iOS apps

FireworksKit provides particle effects into a UIView that you are free to position in your app.

# Usage

Into the viewDidLoad of your UIViewController

```
override func viewDidLoad() {
    super.viewDidLoad()

    // 1. create a FireworksView 
    let fireworksView = FireworksView(frame: view.frame)
        
    // 2. add the FireworksView to your view
    view.addSubview(fireworksView)
        
    // 3. select an effect
    fireworksView?.particleEffect = .rain // you can also use .snow, .smoke or .fire

}
```


# Do you want more effects?

You can open an Issue and request a new effect.
