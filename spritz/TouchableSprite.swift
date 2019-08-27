import SpriteKit
import Foundation

class TouchableSprite : SKSpriteNode {
    override var isUserInteractionEnabled: Bool {
        set {
            // ignore
        }
        get {
            return true
        }
    }
    
    var moveCharacter: (() -> Void)?
    var endMovement: (() -> Void)?

    
    override func touchesBegan (_ touches: Set<UITouch>, with event: UIEvent?) {
        print("we are touching sprite")
        self.moveCharacter?()
    }
    
    override func touchesEnded (_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches ended")
        self.endMovement?()
        
    }
}
