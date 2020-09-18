//
//  ViewController.swift
//  AuthenticationApp
//
//  Created by Shehzad on 18/09/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func loginButton(_ sender: Any) {
        
        let username = usernameTextField.text!
        
        UserDefaults.standard.set(true, forKey: "IsLoggedIn")
        UserDefaults.standard.set(username, forKey: "username")
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "second") as! SecondViewController
        
        UIApplication.shared.windows[0].rootViewController = vc
    }
}

