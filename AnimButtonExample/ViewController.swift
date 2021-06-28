import UIKit
import Spatial

class ViewController: UIViewController {
   lazy var animationButton: AnimationButton = createCustomButton()
   lazy var animationButton2: AnimationButton = createCustomButton2()
   /**
    * ViewDidLoad
    */
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view.backgroundColor = .white
      _ = animationButton
      animationButton.tapDownCallBack = {
         Swift.print("🎉 tapDown")
      }
      animationButton.tapUpCallBack = {
         Swift.print("🎉 tapUp")
      }
      animationButton.tapUpInsideCallBack = {
         Swift.print("🎉 tapUpInside")
      }
      animationButton.tapUpOutsideCallBack = {
         Swift.print("🎉 tapUpOutside")
      }
      /*1*/
      animationButton.applyAnchorAndSize { view in
         let a = Constraint.anchor(view, to: self.view, align: .centerCenter, alignTo: .centerCenter, offset:CGPoint.init(x: 0, y: -((44/2)+22)))
         let s = (Constraint.width(view, to: self.view, offset: -80), Constraint.height(view, height: 44))
         return (a, s)
      }
      _ = animationButton2
      /*2*/
      animationButton2.applyAnchorAndSize { view in
         let a = Constraint.anchor(view, to: animationButton, align: .topCenter, alignTo: .bottomCenter, offset: CGPoint(x: 0, y: 22))
         let s = Constraint.size(view, size: CGSize.init(width: UIScreen.main.bounds.width - 80, height: 44))
         return (a, s)
      }
   }
}
