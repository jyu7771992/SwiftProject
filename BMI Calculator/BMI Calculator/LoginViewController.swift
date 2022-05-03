//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Peipei Yu on 5/2/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPWD: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnLogin.layer.cornerRadius = 10
    }


    @IBAction func loginAction(_ sender: Any) {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){

        if segue.identifier == "loginSegue" {
            let BmiVC = segue.destination as! BMIViewController
            BmiVC.welcomeStr = "Welcome \(txtUserName.text!), your pwd is \(txtPWD.text!)"
        }
    }
    
    
}

