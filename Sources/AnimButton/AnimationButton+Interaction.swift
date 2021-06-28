import Foundation

/**
 * Interaction
 */
extension AnimationButton {
   /**
    * down
    */
   override open func onTapDown() {
      //Swift.print("onTapDown")
      super.onTapDown()
      self.shrink {
         self.textLabel.alpha = 0.2
      }
   }
   /**
    * up
    */
   override open func onTapUp() {
      //Swift.print("onTapUp")
      super.onTapUp()
      self.grow {
         self.textLabel.alpha = 1.0
      }
   }
}
