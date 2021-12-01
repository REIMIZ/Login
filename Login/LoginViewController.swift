//
//  LoginViewController.swift
//  Login
//
//  Created by mac16 on 30/11/21.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var correoTF: UITextField!
    @IBOutlet weak var contraTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginBtn(_ sender: UIButton) {
        if let email = correoTF.text, let password = contraTF.text{
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                }else{
                    self?.performSegue(withIdentifier: "loginInicio", sender: self)
                }
              
            }
        }
       
        
    }
    

}
