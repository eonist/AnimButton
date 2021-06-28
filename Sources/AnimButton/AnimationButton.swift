import UIKit
import Spatial

/**
 * TODO: ⚠️️ Might be better to use UIButton, see this to access bg layer: https://stackoverflow.com/questions/26351759/why-does-my-uibuttons-background-layer-animate-in-and-how-can-i-stop-it
 * TODO: ⚠️️ You could also scale down via .transform (test this when you have time) ref: https://medium.com/livefront/animating-font-size-in-uilabels-fb6fd273a5f3
 */
open class AnimationButton:CustomButton,ConstraintKind,Receedable {
   /*Constraints*/
   public var anchor: AnchorConstraint?
   public var size: SizeConstraint?
   /*UI*/
   public lazy var backgroundView:BackgroundView = createBackgroundView()
   public lazy var textLabel:UILabel = createTextLabel()
   /*Style*/
   internal var style:Style/*backgroundColor,borderColor,textColor*/
   /*Text*/
   internal var text:String
   public init(style:Style = AnimationButton.defaultStyle, text:String = "Dummy text", frame:CGRect = .zero) {
      self.style = style
      self.text = text
      super.init(frame: frame)
      _ = backgroundView
      _ = textLabel
      /*Styling*/
      self.backgroundColor = .clear/*Removes bg.color of CustomButton*/
   }
   /**
    * Boilerplate
    */
   required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
