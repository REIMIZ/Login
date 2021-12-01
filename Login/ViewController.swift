//
//  ViewController.swift
//  Login
//
//  Created by mac16 on 30/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msglabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        msglabel.text = ""
        
        var charindex = 0.0
        
        let mensajetext = "Bienvenido, inicia sesion o registrate para que consigas ver una sorpresa"
        
        for letra in mensajetext{
            
            print(letra)
            
            Timer.scheduledTimer(withTimeInterval: 0.1 * charindex, repeats: false) { (Timer) in
                self.msglabel.text?.append(letra)
            }
            charindex += 1
        }
        
        
    }


}

