import UIKit
import Spatial

/**
 * Create
 */
extension AnimationButton {
   /**
    * Create bg
    */
   open func createBackgroundView() -> BackgroundView{
      let background = BackgroundView.init(frame: .zero)
      self.addSubview(background)
      background.backgroundColor = style.backgroundColor
      background.isUserInteractionEnabled = false/* Disable the view above so the CustomButton functionality works */
      background.applyAnchorAndSize { view in
         let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo: .topLeft)
         let s = Constraint.size(view, to: self)
         return (a,s)
      }
      background.layer.borderWidth = 1
      background.layer.borderColor = style.borderColor.cgColor
      return background
   }
   /**
    * Create text label
    */
   open func createTextLabel() -> UILabel{
      let label = UILabel.init(frame: .zero)
      addSubview(label)
      /*Style*/
      label.textAlignment = .center
      label.font =  .systemFont(ofSize: 20)
      label.textColor = style.textColor
      label.text = self.text//setTitle(, for: .normal)
      label.activateAnchorAndSize { view in
         let a = Constraint.anchor(view, to: self, align: .topLeft, alignTo:  .topLeft)
         let s = Constraint.size(view, to: self)
         return (a,s)
      }
      return label
   }
}
