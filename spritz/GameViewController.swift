import SpriteKit

class GameViewController: UIViewController {
    
    let pro = SKSpriteNode(imageNamed: "pro")
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override func viewDidLoad() {
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        print(view.frame, "hello")
        let scene = GameScene(size: view.frame.size)
        scene.scaleMode = .resizeFill
        
        pro.name = "pro"
        pro.position = CGPoint(x: 200, y: 200)
        scene.addChild(pro)
        
        let upButton = TouchableSprite(imageNamed: "dpad")
        upButton.name = "upButton"
        upButton.position = CGPoint(x: 100, y: 100)
        upButton.moveCharacter = moveCharacterBackwards
        upButton.endMovement = endMovement
        scene.addChild(upButton)
        
        let skView = view as! SKView
        skView.presentScene(scene)
    }
    
    func moveCharacterBackwards() {
        let movement = SKAction.move(by: CGVector(dx: 0, dy: -10), duration: 0.25)
        let continuousMove = SKAction.repeatForever(movement)
        pro.run(continuousMove, withKey: "moveBackwards")
    }
    
    func endMovement() {
        pro.removeAction(forKey: "moveBackwards")
    }
}
