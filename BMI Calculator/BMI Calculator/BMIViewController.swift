//
//  BMIViewController.swift
//  BMI Calculator
//
//  Created by Peipei Yu on 5/3/22.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var lblUser: UILabel!
    @IBOutlet weak var tblHeight: UITextField!
    @IBOutlet weak var tblWeight: UITextField!
    @IBOutlet weak var tblIches: UITextField!
    @IBOutlet weak var lbl_healthRisk: UILabel!
    @IBOutlet weak var uiCal: UIButton!
    
//    @IBOutlet weak var uiHeightControl: UISegmentedControl!
//    @IBOutlet weak var uiWeightControl: UISegmentedControl!
    
    var welcomeStr = ""
    @IBOutlet weak var lblBMI_detail: UILabel!
//    var height = 0.0
//    var weight = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        lblUser.text = welcomeStr
        uiCal.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gobackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnCal(_ sender: Any) {
        self.view.endEditing(true)
        var height = (tblHeight.text! as NSString).doubleValue
        let inch = (tblIches.text! as NSString).doubleValue
        var weight = (tblWeight.text! as NSString).doubleValue
        height = height * 0.3048 + inch * 0.0254
        weight = weight * 0.4535
        let bmi = weight / pow(height, 2)
        
        lblBMI_detail.text = String(format: "%.2f", bmi)
        
        if bmi < 18.5 {
            lbl_healthRisk.text = "Underweight"
        } else if bmi < 24.9{
            lbl_healthRisk.text = "Healthy weight"
        } else if bmi < 29.9{
            lbl_healthRisk.text = "Overweight"
        }
        else{
            lbl_healthRisk.text = "Obese"
        }
    }
    
    
//    @IBAction func heightControl(_ sender: Any) {
//
//        switch uiHeightControl.selectedSegmentIndex {
//        case 0:
//            height = (height * 0.03280) * 0.3048
//            tblHeight.text = String(format: "%.2f", height)
//        case 1:
//            height = (height * 30.48) * 0.01
//            tblHeight.text = String(format: "%.2f", height)
//        default:
//            height = (height * 0.03280) * 0.3048
//            tblHeight.text = String(format: "%.2f", height)
//        }
//
//    }
//
//    @IBAction func weightControl(_ sender: Any) {
//
//    }
}
