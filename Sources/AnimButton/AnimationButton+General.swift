#if os(iOS)
import UIKit
import Spatial

/**
 * Typealias
 */
extension AnimationButton {
   public typealias Style = (backgroundColor: UIColor, borderColor: UIColor, textColor: UIColor)
   public static let defaultStyle: Style = (.white, .purple, .purple)
}
/**
 * We have to store the constraints because we animate them
 */
public class BackgroundView: ConstraintView {
   /**
    * NOTE: This is the only place to get frame.height consistently (when you use either AutoLayout or CGRect based layout)
    */
   override public func layoutSubviews() {
      super.layoutSubviews()
      self.layer.cornerRadius = self.frame.height / 2
   }
}
#endif
