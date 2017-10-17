//
//  ViewController.swift
//  CoolPainter
//
//  Created by Gleb Kalinichenko on 17.10.17.
//  Copyright © 2017 Gleb Kalinichenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var appLogoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

