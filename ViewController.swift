//
//  ViewController.swift
//  Swipes and Shakes
//
//  Created by Daniela Passos on 5/11/20.
//  Copyright © 2020 Daniela Passos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipped(gesture:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipped(gesture:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake{
            print("Device was shaken")
        }
    }
    
    @objc func swipped(gesture: UISwipeGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizer.Direction.right:
                print("User swiped right")
                
            case UISwipeGestureRecognizer.Direction.left:
            print("User swiped left")
                
            default:
                break
                
            }
        }
        
        
    }
    


}

