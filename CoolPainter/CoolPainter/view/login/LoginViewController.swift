//
//  LoginViewController.swift
//  CoolPainter
//
//  Created by Gleb Kalinichenko on 17.10.17.
//  Copyright © 2017 Gleb Kalinichenko. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var nickNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "mainContentSegue") {
            guard let chatDrawerContentViewContoller = segue.destination as? ChatDrawingTabBarViewController else {
                fatalError()
            }
            
            guard let chatViewContoller = chatDrawerContentViewContoller.viewControllers![0] as? ChatViewController else {
                fatalError()
            }
            
            chatViewContoller.nickName = nickNameTextField.text
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDoneClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "mainContentSegue", sender: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
