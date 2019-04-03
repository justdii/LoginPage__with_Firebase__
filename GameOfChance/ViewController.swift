//
//  ViewController.swift
//  GameOfChance
//
//  Created by Diana on 4/1/19.
//  Copyright © 2019 Diana. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ref = Database.database().reference(fromURL: "https://gameofchance-bf112.firebaseio.com/")
      ref.updateChildValues(["Some value" : 123123])
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    @objc func handleLogout(){
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }


}

