//
//  SecondViewController.swift
//  AuthenticationApp
//
//  Created by Shehzad on 18/09/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func logoutButton(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey: "IsLoggedIn")
        UserDefaults.standard.removeObject(forKey: "username")
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "first") as! ViewController
        UIApplication.shared.windows[0].rootViewController = vc
    }
    
}
