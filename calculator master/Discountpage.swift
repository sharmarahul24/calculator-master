//
//  Discountpage.swift
//  calculator master
//
//  Created by R92 on 18/01/24.
//

import UIKit

class Discountpage: UIViewController {
    
    @IBOutlet weak var priceafterdiscount: UILabel!
    
    @IBOutlet weak var savedamount: UILabel!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func countactionbutton(_ sender: Any) {
        
        if let Price = Double(text.text!),
           let Discount = Double(text2.text!){
            let OGPrice = ((Price * Discount)/100)
            let Finalprice = Price - OGPrice
            
            priceafterdiscount.text = String(Finalprice)
            savedamount.text = String(OGPrice)
            
            
        }
            
        
        
        else if text.text == "" && text2.text == ""{
            alert(title: "alert", message: "Please Enter all details to Count")
        }
        
        else if text.text == ""{
            alert(title: "Error", message: "please Enter Price Amount")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Please Enter Discount  Rate")
        }
    }
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
        
    }
}
