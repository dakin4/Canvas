//
//  CanvasViewController.swift
//  Canvas
//
//  Created by David King on 3/25/18.
//  Copyright © 2018 David King. All rights reserved.
//

import UIKit



class CanvasViewController: UIViewController {

    
    
    @IBOutlet weak var UIViewTray: UIView!
    
    var trayOriginalCenter: CGPoint?

    var trayDownOffset: CGFloat?
    
    var trayUp: CGPoint?
    
    var trayDown: CGPoint?
    
    
    @IBAction func TrayPanGesture(_ sender: UIPanGestureRecognizer) {
        
    
   trayUp = UIViewTray.center
        
    var velocity = sender.velocity(in: view)
    
        
        
    var translation = sender.translation(in: view)
        
        if (sender.state == .began){
            print("Began")
            
            
            trayOriginalCenter = UIViewTray.center
            
            
        }
       else if (sender.state == .changed){
                    UIViewTray.center = CGPoint(x: trayOriginalCenter!.x, y: trayOriginalCenter!.y + translation.y )
            print("translation y \(translation.y)")
           
        }
            
       else if (sender.state == .ended){
            if (velocity.y > 0){
                UIView.animate(withDuration: 0.1, animations: { 
                    self.UIViewTray.center = self.trayDown!
                })
                
            }
           else if (velocity.y < 0){
                print("less \(self.UIViewTray.center)")
                UIView.animate(withDuration: 0.6, animations: {
                   
                    self.UIViewTray.center = self.trayUp!
                    
                })
                
            }
        }
        
        
    }
    
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        trayDownOffset = 250
        trayUp = UIViewTray.center
        print("tray up \(trayUp)")
        trayDown = CGPoint(x: UIViewTray.center.x, y: UIViewTray.center.y + trayDownOffset!)
        
      
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

       

    
    
    
    
    

}

