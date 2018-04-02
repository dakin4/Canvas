//
//  CanvasViewController.swift
//  Canvas
//
//  Created by David King on 3/25/18.
//  Copyright © 2018 David King. All rights reserved.
//

import UIKit



class CanvasViewController: UIViewController {

    var newlyCreatedFace: UIImageView!
    
    @IBOutlet weak var UIViewTray: UIView!
    
    var trayOriginalCenter: CGPoint?

    var trayDownOffset: CGFloat?
    
    var trayUp: CGPoint?
    
    var trayDown: CGPoint?
   
    var newlyCreatedFaceOrigCenter: CGPoint!
    
    //var panGesture:UIPanGestureRecognizer?
    
    var newEmojiCenter: CGPoint?
    var NewFace: UIImageView!
     //var NewFace: [UIImageView] = []
    
    @IBAction func DeadPanGesture(_ sender: UIPanGestureRecognizer) {
    
    var translation = sender.translation(in: view)
    
        var imageDead = sender.view as! UIImageView
       
        
        
        print("deadpan")
       
        switch sender.state
        {
        case .began:
        print("dead emoji began")
        began(Image: imageDead)
        
            
        case .changed:
        print("dead emoji changed")
        newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOrigCenter.x + translation.x, y: newlyCreatedFaceOrigCenter.y + translation.y)
           
            
        case .ended:
        print("dead emoji ended")
         let panGesture = UIPanGestureRecognizer(target: self, action: #selector(NewEmojiPan(sender:)))
        UIView.animate(withDuration: 0.1) {
            self.newlyCreatedFace.transform = CGAffineTransform.identity
        }
        newlyCreatedFace.addGestureRecognizer(panGesture)
        newlyCreatedFace.isUserInteractionEnabled = true
        default:
        return
        
        }
      
        
        
    }
    
   
    
    @IBAction func ExcitedPanGesture(_ sender: UIPanGestureRecognizer) {
        
        var translation = sender.translation(in: view)
        
        var imageExcited = sender.view as! UIImageView
        
        switch sender.state
        {
        case .began:
            print("excited emoji began")
            began(Image: imageExcited)
            
            
            
        case .changed:
            print("excited emoji changed")
             newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOrigCenter.x + translation.x, y: newlyCreatedFaceOrigCenter.y + translation.y)
            
        case .ended:
            print("excited emoji ended")
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(NewEmojiPan(sender:)))
            UIView.animate(withDuration: 0.1) {
                self.newlyCreatedFace.transform = CGAffineTransform.identity
            }
            
            newlyCreatedFace.addGestureRecognizer(panGesture)
            newlyCreatedFace.isUserInteractionEnabled = true
            newEmojiCenter = newlyCreatedFace.center
            
        default:
            return
            
        }

    }
    
    @IBAction func HappyPanGesture(_ sender: UIPanGestureRecognizer) {
        var translation = sender.translation(in: view)
        
        var imageHappy = sender.view as! UIImageView
        
        switch sender.state
        {
        case .began:
            print("happy emoji began")
            began(Image: imageHappy)
            
            
        case .changed:
            print("happy emoji changed")
             newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOrigCenter.x + translation.x, y: newlyCreatedFaceOrigCenter.y + translation.y)
            
        case .ended:
            print("happy emoji ended")
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(NewEmojiPan(sender:)))
            
            UIView.animate(withDuration: 0.1) {
                self.newlyCreatedFace.transform = CGAffineTransform.identity
            }
            
            newlyCreatedFace.addGestureRecognizer(panGesture)
            newlyCreatedFace.isUserInteractionEnabled = true
            newEmojiCenter = newlyCreatedFace.center
            
        default:
            return
            
        }

    }
    
    
    @IBAction func SadPanGesture(_ sender: UIPanGestureRecognizer) {
        var translation = sender.translation(in: view)
        
        var imageSad = sender.view as! UIImageView
        
        switch sender.state
        {
        case .began:
            print("Sad emoji began")
            began(Image: imageSad)
            
            
        case .changed:
            print("Sad emoji changed")
               newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOrigCenter.x + translation.x, y: newlyCreatedFaceOrigCenter.y + translation.y)
            
        case .ended:
            print("Sad emoji ended")
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(NewEmojiPan(sender:)))
            
            UIView.animate(withDuration: 0.1) {
                self.newlyCreatedFace.transform = CGAffineTransform.identity
            }
            
            newlyCreatedFace.addGestureRecognizer(panGesture)
            newlyCreatedFace.isUserInteractionEnabled = true
            newEmojiCenter = newlyCreatedFace.center
            
        default:
            return
            
        }

    }
    
    @IBAction func TonguePanGesture(_ sender: UIPanGestureRecognizer) {
        
        var translation = sender.translation(in: view)
        
        var imageTongue = sender.view as! UIImageView
        switch sender.state
        {
        case .began:
            print("Tongue emoji began")
             began(Image: imageTongue)
            
            
        case .changed:
            print("Tongue emoji changed")
            newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOrigCenter.x + translation.x, y: newlyCreatedFaceOrigCenter.y + translation.y)
            
            
        case .ended:
           
            print("Tongue emoji ended")
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(NewEmojiPan(sender:)))
            
            UIView.animate(withDuration: 0.1) {
                self.newlyCreatedFace.transform = CGAffineTransform.identity
            }
            newlyCreatedFace.addGestureRecognizer(panGesture)
            newlyCreatedFace.isUserInteractionEnabled = true
            newEmojiCenter = newlyCreatedFace.center
            
        default:
            return
            
        }

    }
    
    
    @IBAction func WinkPanGesture(_ sender: UIPanGestureRecognizer) {
        
        var translation = sender.translation(in: view)
        var imageWink = sender.view as! UIImageView
        
        switch sender.state
        {
       
        case .began:
            
            print("wink emoji began")
            began(Image: imageWink)
            
            
        case .changed:
            
            print("wink emoji changed")
              newlyCreatedFace.center = CGPoint(x: newlyCreatedFaceOrigCenter.x + translation.x, y: newlyCreatedFaceOrigCenter.y + translation.y)
            
        case .ended:
            
            print("wink emoji ended")
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(NewEmojiPan(sender:)))
           
            UIView.animate(withDuration: 0.1) {
            self.newlyCreatedFace.transform = CGAffineTransform.identity
            }
           
            newlyCreatedFace.addGestureRecognizer(panGesture)
            newlyCreatedFace.isUserInteractionEnabled = true
            newEmojiCenter = newlyCreatedFace.center
            
        default:
            return
            
        }

    }
    
    
    
    
    @IBAction func TrayPanGesture(_ sender: UIPanGestureRecognizer) {
        
    

        
    var velocity = sender.velocity(in: view)
    
        
        
    var translation = sender.translation(in: view)
        
        if (sender.state == .began){
            print("Began")
            
            
            trayOriginalCenter = UIViewTray.center
            
            
        }
       else if (sender.state == .changed){
                    if (UIViewTray.center.y > trayUp!.y && UIViewTray.center.y < trayDown!.y || UIViewTray.center.y == trayUp!.y && translation.y > 0 || UIViewTray.center.y == trayDown!.y && translation.y < 0)
                    {
            
                       
                        
            UIViewTray.center = CGPoint(x: trayOriginalCenter!.x, y: trayOriginalCenter!.y + translation.y )
            print("translation y \(translation.y)")
            }
           
           
        }
            
       else if (sender.state == .ended){
            if (velocity.y > 0){
           
                UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.5, options: [], animations: {
                    
                    
                    self.UIViewTray.center = self.trayDown!
                    
                    }, completion: nil)
                
                
            }
           else if (velocity.y < 0){
               UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.1, options: [], animations: {
                
                
                self.UIViewTray.center = self.trayUp!
                
                }, completion: nil)
       
               print("less \(self.UIViewTray.center)")
            }
        }
    }

    
    
    
    func began (Image: UIImageView) {
      
        newlyCreatedFace = UIImageView(image: Image.image)
        view.addSubview(newlyCreatedFace)
        
        UIView.animate(withDuration: 0.1) {
        self.newlyCreatedFace.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }
        
        newlyCreatedFace.center = Image.center
        newlyCreatedFace.center.y += UIViewTray.frame.origin.y
        newlyCreatedFaceOrigCenter = newlyCreatedFace.center
        
    }
    
  
    func NewEmojiPan(sender: UIPanGestureRecognizer) {
        
        var Emoji = sender.view as! UIImageView
       
        var translation = sender.translation(in: view)
        print("new emoji \(translation)")
        
        
        
        
        switch sender.state
        {
        case .began:
            print("Created Pan began")
            newEmojiCenter = Emoji.center
            UIView.animate(withDuration: 0.1, animations: { 
                Emoji.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            })
            Emoji.center = CGPoint(x: newEmojiCenter!.x + translation.x, y: newEmojiCenter!.y + translation.y)
            
            
            
            
            
        case .changed:
            print("Created emoji changed")
            Emoji.center = CGPoint(x: newEmojiCenter!.x + translation.x, y: newEmojiCenter!.y + translation.y)
            
            
        case .ended:
            print("Created emoji ended")
            newEmojiCenter = Emoji.center
            UIView.animate(withDuration: 0.1) {
                Emoji.transform = CGAffineTransform.identity
            }
            
        default:
            return
            
        }

    }
    
    
    
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        trayDownOffset = 180
        // brings tray down to look better
        
        trayUp = CGPoint(x: UIViewTray.center.x + 11, y: UIViewTray.center.y + 80)
        UIViewTray.center = trayUp!
        print("view \(UIViewTray.center.y)")
        trayDown = CGPoint(x: UIViewTray.center.x, y: UIViewTray.center.y + trayDownOffset!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

       

    
    
    
    
    

}

