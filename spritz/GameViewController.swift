import SpriteKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        let scene = GameScene(size: view.frame.size)
//        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        let pro = SKSpriteNode(imageNamed: "pro")
        pro.name = "pro"
        pro.position = CGPoint(x: 200, y: 200)
        
        let upButton = TouchableSprite(imageNamed: "dpad")
        upButton.name = "upButton"
        upButton.position = CGPoint(x: 100, y: 100)
        
        scene.addChild(pro)
        scene.addChild(upButton)
        
        let skView = view as! SKView
        skView.presentScene(scene)
    }
}
