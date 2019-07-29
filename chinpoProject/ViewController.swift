//
//  ViewController.swift
//  chinpoProject
//
//  Created by Ryo Horiyama on 2019/07/29.
//  Copyright © 2019 Ryo Horiyama. All rights reserved.
//

import UIKit
import FontAwesome_swift
import RevealingSplashView

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "Twitter_Social_Icon_Circle_Color")!,iconInitialSize: CGSize(width: 70, height: 70), backgroundColor: UIColor(red:0.11, green:0.56, blue:0.95, alpha:1.0))
        
        //Adds the revealing splash view as a sub view
        
        revealingSplashView.animationType = .popAndZoomOut
//        ここで変える
        
        
        self.view.addSubview(revealingSplashView)
        
        //Starts animation
        revealingSplashView.startAnimation(){
            print("Completed")
            
        }
        
        
    label.font = UIFont.fontAwesome(ofSize: 50, style: .solid)
    label.text = String.fontAwesomeIcon(name: .cat)
        
    
        
    }


}


