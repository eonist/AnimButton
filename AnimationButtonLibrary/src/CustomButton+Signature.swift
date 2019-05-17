import UIKit
/**
 * Callback signatures
 */
extension CustomButton{
   /*Signatures*/
   public typealias TapUpInsideCallBack = () -> Void
   public typealias TapUpOutsideCallBack = () -> Void
   public typealias TapDownCallBack = () -> Void
   public typealias TapUpCallBack = () -> Void
   /*Defaults*/
   public static let defaultTapUpInside:TapUpInsideCallBack = {}//{Swift.print("default \(CustomButton.self).onTapUpInside")}
   public static let defaultTapUpOutside:TapUpOutsideCallBack = {}//{Swift.print("default \(CustomButton.self).onTapUpOutside")}
   public static let defaultTapUp:TapUpCallBack = {}//{Swift.print("default \(CustomButton.self).onTapUp")}
   public static let defaultTapDown:TapDownCallBack = {}//{Swift.print("default \(CustomButton.self).onTapDown")}
}
