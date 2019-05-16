//
//  ViewController.swift
//  Belajar_Dataflow
//
//  Created by Annisa Nabila Nasution on 16/05/19.
//  Copyright © 2019 Annisa Nabila Nasution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullnameTextfield: UITextField!
    @IBOutlet weak var phoneTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullnameTextfield.delegate = self
        phoneTextfield.delegate = self
    }
    
    @IBAction func registerUser(_ sender: Any) {
        performSegue(withIdentifier: "goToHome", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? HomeViewController {
            destination.name = fullnameTextfield.text
        }
    }
    
    
}







extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField : UITextField)-> Bool{
        if textField == fullnameTextfield {
            phoneTextfield.becomeFirstResponder()
        } else if textField == phoneTextfield {
            textField.resignFirstResponder()
        }
        
        return true
    }
    
    
}

