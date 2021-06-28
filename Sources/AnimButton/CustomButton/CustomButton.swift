#if os(iOS)
import UIKit
/**
 * let customButton:CustomButton = CustomButton.init(frame:CGRect.init(x:0,y:0,width:120,height:40))
 * addSubview(customButton)
 * customButton.tapUpInsideCallBack = {
 *    Swift.print("🎉")
 * }
 * - Fixme: ⚠️️  Add onTapDownInside method
 */
open class CustomButton: UIView {
   public var tapUpInsideCallBack: TapUpInsideCallBack = defaultTapUpInside
   public var tapUpOutsideCallBack: TapUpOutsideCallBack = defaultTapUpOutside
   public var tapDownCallBack: TapDownCallBack = defaultTapDown
   public var tapUpCallBack: TapUpCallBack = defaultTapUp
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      backgroundColor = .green//Debug
      isUserInteractionEnabled = true/*⚠️️ might be/not be needed ? */
   }
   /**
    * Boilerplate
    */
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
#endif
