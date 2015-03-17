//
//  GameViewController.swift
//  Explorer
//
//  Created by Ian K. on 3/14/15. edited by bazarsen on 3/16/15.
//  Copyright (c) 2015 Noob Studios. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController

{
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        let skView = view as SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
   
    
@IBOutlet weak var sff: UILabel!
    
    @IBOutlet weak var PopulationNumber: UILabel!
    
  var currentPopulation = 0

    @IBAction func AddOneGuy(sender: UIButton){
        
        
        currentPopulation = currentPopulation + 1
        PopulationNumber.text = "Current population is: \(currentPopulation)"
    
    
    }
    
    //кнопка убрать одного
@IBAction func KillOneGuy(sender: UIButton) {

        currentPopulation = currentPopulation - 1

        PopulationNumber.text = "Current population is: \(currentPopulation)"
    
    
  sff.text = "people"
    
   
   if  currentPopulation < 1 {
    var message = "too low" + sff.text!
    var alert = UIAlertController(title: "hello!", message : message, preferredStyle : UIAlertControllerStyle.Alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default , handler:nil))
    self.presentViewController(alert, animated: true, completion:nil);

currentPopulation = currentPopulation + 1   }
else {

println ("ok")
        }
    }




};