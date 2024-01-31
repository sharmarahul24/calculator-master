//
//  schoolresult2.swift
//  calculator master
//
//  Created by R92 on 18/01/24.
//

import UIKit

class schoolresult2: UIViewController {
    
    @IBOutlet weak var finalresult: UILabel!
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func countactionbutton(_ sender: Any) {
        
        if let Number = Double(text1.text!),
           let Square = Double(text2.text!){
            var Finalans = 1
            for i in 0..<Int(Square){
                Finalans = Finalans * Int(Number)
            }
            
            finalresult.text = String(Finalans)
        }
        
        
       else if text1.text == "" && text2.text == ""{
            alert(title: "alert", message: "Please Enter all details to calculate")
        }
        
        else if text1.text == ""{
            alert(title: "Error", message: "please input Number")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Please Enter Square or hour")
        }
    }
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
        
    }

}
