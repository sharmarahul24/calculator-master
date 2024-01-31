//
//  mutualfund.swift
//  calculator master
//
//  Created by R92 on 18/01/24.
//

import UIKit

class mutualfund: UIViewController {

    @IBOutlet weak var investedamount: UILabel!
    
    @IBOutlet weak var estreturn: UILabel!
    
    
    @IBOutlet weak var totalvalue: UILabel!
    
    
    @IBOutlet weak var text3: UITextField!
    
    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet weak var text2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
    }
    
    @IBAction func calculateActionBtn(_ sender: Any) {
        if let monthlyinvestment = Double(text.text!), let expreturn = Double(text2.text!), let timeperiod = Double(text3.text!){
            let futureValue = monthlyinvestment * pow(1 + expreturn / 100, timeperiod)
          totalvalue.text = String(futureValue)
            investedamount.text = String(monthlyinvestment)
            
            let esr = (futureValue - monthlyinvestment)
            
          estreturn.text = String(esr)
        }
        
        
        if text.text == "" && text2.text == "" && text3.text == ""{
            alert(title: "alert", message: "Please Enter all details to Calculat")
        }
    
        else if text.text == ""{
            alert(title: "Error", message: "please Enter montly investment")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Please Enter Expected return")
        }
        else if text3.text == ""{
            alert(title: "Error", message: "Please Enter Time Period")
        }
   
    }
 
   

}
