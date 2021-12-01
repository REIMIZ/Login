//
//  RegistrarViewController.swift
//  Login
//
//  Created by mac16 on 30/11/21.
//

import UIKit
import Firebase
import FirebaseAuth

class RegistrarViewController: UIViewController {

    @IBOutlet weak var CorreoTF: UITextField!
    @IBOutlet weak var ContraTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func alertamsg(msj: String){
        let alerta = UIAlertController(title: "ERROR", message: msj, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
        present(alerta, animated: true, completion: nil)
    }
    
    
    @IBAction func registrarButton(_ sender: UIButton) {
        if let email = CorreoTF.text, let password = ContraTF.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print("Error al crear usuario\(e.localizedDescription)")
                    self.alertamsg(msj: "Error al crear usuario")
                }else{
                    self.performSegue(withIdentifier: "registroInicio", sender: self)
                }
                
            }

        }
    }
    
    

}
