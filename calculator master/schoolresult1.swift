//
//  schoolresult1.swift
//  calculator master
//
//  Created by R92 on 18/01/24.
//

import UIKit

class schoolresult1: UIViewController {

    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    
    @IBOutlet weak var anslable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func countactionbutton(_ sender: Any) {
        
        if let totalmarks = Double(text1.text!),
           let yourtotalmarks = Double(text2.text!){
            let result = (yourtotalmarks/totalmarks) * 100
            
            anslable.text = String(result)
        
        }
        else if text1.text == "" && text2.text == ""{
            alert(title: "alert", message: "Please Enter all details to Calculate")
        }
        
        else if text1.text == ""{
            alert(title: "Error", message: "please Enter total marks ")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Please Enter your Marks")
        }
    }
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
        
    }
    

  

}
