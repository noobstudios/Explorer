//
//  GameViewController.swift
//  Explorer
//
//  Created by Ian K. on 3/14/15. edited by bazarsen on 3/16/15.
//  Copyright (c) 2015 Noob Studios. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    
    

    
    
    @IBOutlet var nameField : UITextField!

   //Тут еще не доделано
    @IBAction func buttonClick(sender : UIButton) {
        var message = "Text" + nameField.text
        var alert = UIAlertController(title: "hello!", message : message, preferredStyle : UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil))
        self.presentViewController(alert, animated: true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        let skView = view as SKView
        //Фпс на айфоне в 2д игре)))
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}