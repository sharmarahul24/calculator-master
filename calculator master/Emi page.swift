//
//  Emi page.swift
//  calculator master
//
//  Created by R92 on 18/01/24.
//

import UIKit

class Emi_page: UIViewController {
  
    
    @IBOutlet weak var totalpaybalamt: UILabel!
    
    
    
    @IBOutlet weak var interestamt: UILabel!
    
    
    @IBOutlet weak var totalinterest: UILabel!
    
    @IBOutlet weak var text3: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
    }
    
    @IBAction func calculatebuttonaction(_ sender: Any) {
        
        let loanamount = Double(text.text!)!
        let Interestrate = Double(text2.text!)!
        let Timeperiod = Double(text3.text!)
        
        var emi = String(EMI(loanamt: Double(loanamount), Rate: Double(Interestrate), Years: Double(Timeperiod!)))
        
        var totalpayment = totalpayment(Emi: Double(emi) ?? 0, Years: Int(Double(Timeperiod ?? 0)))
        
        totalpaybalamt.text = String(totalpayment)
        
        var final = totalpayment - loanamount
        
        totalinterest.text = String(final)
        
        interestamt.text = String(loanamount)
        
        
         if text.text == "" && text2.text == "" && text3.text == ""{
            alert(title: "alert", message: "Please Enter all details to Calculat")
        }
        
        else if text.text == ""{
            alert(title: "Error", message: "please Enter Loan Amount")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Please Enter Interest Rate")
        }
        else if text3.text == ""{
            alert(title: "Error", message: "Please Enter Time period")
        }
        
    }
    
    func EMI(loanamt : Double, Rate: Double, Years: Double)->Double{
        let Interestvalue = Rate / 1200
        let monthly = Years * 12
        let total = loanamt * Interestvalue / (1 - (pow(1/(1 + Interestvalue), monthly)))
        return total
    }
    func totalpayment(Emi : Double, Years: Int)->Double{
        let monthly = Years * 12
        let total = Emi * Double(monthly)
        return total
    }
    func interest(totalpayment: Double, loanamt: Double)->Double {
        let finalinterest = totalpayment - loanamt
        return finalinterest
    }
    


}
