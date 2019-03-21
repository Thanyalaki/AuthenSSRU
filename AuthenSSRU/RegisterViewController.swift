//
//  RegisterViewController.swift
//  AuthenSSRU
//
//  Created by Student04 on 20/3/2562 BE.
//  Copyright © 2562 nook. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
//    My Outlet
    
    
    @IBOutlet weak var nametextField: UITextField!
    
    
    @IBOutlet weak var UserTextField: UITextField!
    
    
    
    @IBOutlet weak var PasswordTextFieid: UITextField!
    
    
    //    End Outier
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    } //Main Method
    

    @IBAction func uploadbutton(_ sender: UIBarButtonItem) {
        
      
        print("You Click Upload")
        
        let name = nametextField.text!
        
        print("name =\(name)")
        
        
        
        
        
    }
    
    
    

   @IBAction func backButton(_ sender: UIBarButtonItem) {
    
    print("You Click Back")
    performSegue(withIdentifier: "BackMain", sender: self)
    
    }
    

} //Main Class
