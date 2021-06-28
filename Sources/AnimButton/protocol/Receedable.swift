import UIKit
/**
 * NOTE: This is sort of a trait protocol
 */
public protocol Receedable{}
/**
 * Animation
 * EXAMPLE: func onTouchUpInside(){ button.grow() } func onTouchDown(){ button.shrink() };
 * NOTE: iOS 10 and up can use: let anim = UIViewPropertyAnimator.init(duration: 0.15, curve: .easeOut){}anim.startAnimation() anim.addCompletion{ _ in}
 * TODO: ⚠️️ Maybe add onComplete as well
 */
extension Receedable where Self: UIView {
   /**
    * Grow the button (Animation)
    * Parameter onChange allows other properties to be manipulated
    */
   public func grow(onChange:@escaping OnChange = {}){
      UIView.animate(withDuration: 0.15, delay: 0.0, options: [.allowUserInteraction, .curveEaseOut], animations: {
         self.transform = CGAffineTransform.identity
         onChange()
      })
   }
   /**
    * Shrink the button (Animation)
    * Parameter onChange allows other properties to be manipulated
    */
   public func shrink(onChange:@escaping OnChange = {}) {
      UIView.animate(withDuration: 0.15, delay: 0.0, options: [.allowUserInteraction, .curveEaseOut], animations: {
         self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
         onChange()
      })
   }
}
/**
 * Signature
 */
extension Receedable {
   public typealias OnChange = () -> Void
}
