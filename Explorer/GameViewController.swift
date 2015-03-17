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
    
    @IBOutlet weak var PopulationNumber: UILabel!
    
    var currentPopulation = 0

    
    @IBOutlet weak var sff: UITextField!
    
   

  
  

//кнопка добавить одного
    @IBAction func AddOneGuy(sender: UIButton) {
        
        
        currentPopulation = currentPopulation + 1
        PopulationNumber.text = "Current population is: \(currentPopulation)"
    
    
    
    }
    
    //кнопка убрать одного
@IBAction func KillOneGuy(sender: UIButton) {

        currentPopulation = currentPopulation - 1

        PopulationNumber.text = "Current population is: \(currentPopulation)"
    
    
}
    
//Скажи плис вот почему оно не работает?!!? тупо не могу найти фикс (то что следующее раскоменть и посмотри: будет выдавать ошибку expected declaration, что поидее изначает что просто где-то пропущена скобка, но я 100 раз все проверил
    /*
   if  currentPopulation <= 0 {
    var message = "Text" + sff.text
    var alert = UIAlertController(title: "hello!", message : message, preferredStyle : UIAlertControllerStyle.Alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default , handler:nil))
    self.presentViewController(alert, animated: true, completion:nil)
    }
else {

println ("ok")
}
*/
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
}