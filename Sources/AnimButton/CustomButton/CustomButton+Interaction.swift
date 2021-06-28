#if os(iOS)
import UIKit
/**
 * Override default behaviours
 */
extension CustomButton {
   /**
    * On tap down inside
    */
   override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      super.touchesBegan(touches, with: event)
      if let touch = touches.first, touch.view == self {/*touch began*/
         onTapDown()
      }
      super.touchesBegan(touches, with: event)
   }
   /**
    * On tap up inside
    */
   override open func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      super.touchesEnded(touches, with: event)
      if let touch = touches.first {/*Touch ended*/
         //_ = touch
         //         Swift.print("touch.view:  \(touch.view)")
         if touch.view == self {
            let touchPointInButton = touch.location(in: self)
            //            Swift.print("touchPointInButton:  \(touchPointInButton)")
            //            Swift.print("self.frame:  \(self.frame)")
            //            Swift.print("self.bounds:  \(self.bounds)")
            if self.bounds.contains(touchPointInButton) {
               //               Swift.print("within")
               onTapUpInside()
            }else {
               //               Swift.print("outside")
               onTapUpOutside()
            }
         }
         //         else {
         //         }
         onTapUp()/*not sure if this should fire before or after the inside and outside calls*/ 
         //            - (IBAction)buttonTapped:(id)sender forEvent:(UIEvent*)event
         //         {
         //            UIView *button = (UIView *)sender;
         //            UITouch *touch = [[event touchesForView:button] someObject];
         //            CGPoint touchPointInButton = [touch locationInView:button];
         //            NSLog(@"Location in button: %f, %f", touchPointInButton.x, touchPointInButton.y);
         //         }
      }
   }
   /**
    * NOTE: In a tableview, this is fired if the tap starts to drag the tableview etc
    */
   override open func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
      super.touchesCancelled(touches, with: event)
      if let touch = touches.first {/*Touch ended*/
         _ = touch
         //         Swift.print("touchesCancelled.touch.view:  \(String(describing: touch.view))")
         onTapUp()
      }
   }
}
/**
 * Interactions
 */
extension CustomButton {
   /**
    * Overridable
    */
   @objc open func onTapUp() {
      tapUpCallBack()
   }
   /**
    * Overridable
    */
   @objc open func onTapUpInside() {
      //      Swift.print("onTapUpInside")
      tapUpInsideCallBack()
   }
   /**
    * Overridable
    */
   @objc open func onTapUpOutside() {
      tapUpOutsideCallBack()
   }
   /**
    * OVerridable
    */
   @objc open func onTapDown() {
      tapDownCallBack()
   }
}
#endif
