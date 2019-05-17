# AnimationButton

[![codebeat badge](https://codebeat.co/badges/a14b185c-f5ec-4fab-ae83-6141e4f24a24)](https://codebeat.co/a/30n1st/projects/github-com-eonist-animationbutton-master)

<img width="496" alt="img" src="https://github.com/stylekit/img/blob/master/animbtn-rev5.gif">

### What is it
Button That supports AutoLayout and Animation

### How does it work
- Use AutoLayout like any regular UIButton

### How do I get it
- Carthage `github "eonist/AnimationButton" "master"`
- Manual Open `AnimationButtonTest.xcodeproj`
- CocoaPod (Coming soon)

### Example:
```swift
let purpleStyle:AnimationButton.Style = (backgroundColor:.purple,borderColor:.purple,textColor:.white)
let customButton:AnimationButton = .init(style:purpleStyle,  text:"NEI TAKK", frame: .zero)
container.addSubview(customButton)

customButton.activateConstraint { view in
   let w = Constraint.width(view, to: container, multiplier: 0.5)
   let h = Constraint.height(view, height: 32)
   return [w,h]
}

customButton.tapUpInsideCallBack = {
   Swift.print("🎉")
}
```

### TODO:
- Use AnimationButton and AnimatedButton to differentiate between lib and core file
