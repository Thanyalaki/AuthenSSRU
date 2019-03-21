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
        let user = UserTextField.text!
        let password = PasswordTextFieid.text!
        
        print("name =\(name)")
        print("user = \(user)")
        print("password = \(password)")
        
        if (name.count == 0) || (user.count == 0) || (password.count == 0) {
            myAlert(titleString: "HAve Space", messageString: "Please Fill Blank")
        } else{
            uploaData(name: name, user: user, password: password)
            
        }
        
        } // upload Button
    
    func myAlert(titleString: String, messageString:  String) -> Void {
        
   print("title = \(titleString),message = \(messageString)")
        let alert = UIAlertController(title: titleString, message: messageString, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert,animated: true,completion: nil)
        
        } // myAlert
    
    func uploaData(name: String,user: String,password: String) -> Void {
        
        let urlString : String = "https://www.androidthai.in.th/snru/addDataThanyalak.php?isAdd=true&Name=\(name)&User=\(user)&Password=password=\(password)"
        
        let url = URL(string: urlString)
        let request = NSMutableURLRequest(url: url!)
        let task = URLSession.shared.dataTask(with: request as URLRequest) {data, response, error in
            
            if error != nil {
                print("Error")
            } else {
                
                if let tesDta = data {
                    
                   let canReadData = NSString(data: tesDta, encoding: String.Encoding.utf8.rawValue)
                    
                    print("canRead ==>\(String(describing: canReadData))")
                }
                
            } //if1
            
        }//end Task
        task.resume()
        
        
        
        
        
        
        
    }
    
    

   @IBAction func backButton(_ sender: UIBarButtonItem) {
    
    print("You Click Back")
    performSegue(withIdentifier: "BackMain", sender: self)
    
    }
    

} //Main Class
