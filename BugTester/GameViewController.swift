//
//  GameViewController.swift
//  BugTester
//
//  Created by Daniel Kanaan on 9/17/15.
//  Copyright (c) 2015 Daniel Kanaan. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        SpriteKitBugTester.sharedInstance.completion = {
            if let scene = GameScene(fileNamed:"GameScene") {
                // Configure the view.
                
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView.ignoresSiblingOrder = true
                
                /* Set the scale mode to scale to fit the window */
                scene.scaleMode = .AspectFill
                
                skView.presentScene(scene)
            }

        }
        let bugScene = SpriteKitBugTester.SpriteKitBugScene(size:CGSize(width: skView.bounds.width, height: skView.bounds.height))
        skView.presentScene(bugScene)
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
