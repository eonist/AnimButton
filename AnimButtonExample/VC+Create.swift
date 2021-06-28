import UIKit
import Spatial

extension ViewController {
   /**
    * Create custom button
    */
   func createCustomButton() -> AnimationButton {
      let style: AnimationButton.Style = (backgroundColor:.blue, borderColor:.blue, textColor:.white)//(.white,.blue,.blue)
      let customButton: AnimationButton = .init(style:style, text:"Accept", frame: .zero)
      self.view.addSubview(customButton)
      return customButton
   }
   /**
    * CreateCustomButton2
    */
   func createCustomButton2() -> AnimationButton {
      let style: AnimationButton.Style = (.white, .blue, .blue)
      let customButton: AnimationButton = .init(style: style, text: "Decline", frame: .zero)
      self.view.addSubview(customButton)
      return customButton
   }
}
