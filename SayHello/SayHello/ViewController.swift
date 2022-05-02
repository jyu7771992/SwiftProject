//
//  ViewController.swift
//  SayHello
//
//  Created by Peipei Yu on 5/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var lblShoe: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
        let first = String(txtFirstName.text!)
        let last = String(txtLastName.text!)
        
        lblShoe.text = "\(first), \(last), say hello!"
    }
    
}

