import SpriteKit

class TouchableSprite : SKSpriteNode {
    override var isUserInteractionEnabled: Bool {
        set {
            // ignore
        }
        get {
            return true
        }
    }
    
    override func touchesBegan (_ touches: Set<UITouch>, with event: UIEvent?) {
        print("we are touching sprite")
        GameScene.character.move(to: CGPoint(0,-1), duration: 0.25)
    }
}
