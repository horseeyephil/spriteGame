import SpriteKit

class GameScene: SKScene {
    
    lazy var character = childNode(withName: "pro")
    
    override func didMove(to view: SKView) {
        
        registerSwipeGestures(view: view)
        
    }
    
    func registerSwipeGestures(view: SKView) {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        view.addGestureRecognizer(swipeUp)
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        view.addGestureRecognizer(swipeDown)
    }

    @objc func swipe(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
                let rotateLeft = SKAction.rotate(byAngle: CGFloat.pi/2, duration: 0.1)
                character?.run(rotateLeft)
            case UISwipeGestureRecognizer.Direction.right:
                print("Swiped right")
            case UISwipeGestureRecognizer.Direction.up:
                print("Swiped up")
            case UISwipeGestureRecognizer.Direction.down:
                print("Swiped down")
            default:
                break
            }
    }
}
}
