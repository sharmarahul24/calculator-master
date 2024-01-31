//
//  menupagee.swift
//  calculator master
//
//  Created by R92 on 18/01/24.
//

import UIKit

class menupagee: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        radius()
    }
    
    func radius(){
        view1.layer.cornerRadius = 20.20
        view2.layer.cornerRadius = 20.20
        view3.layer.cornerRadius = 20.20
        view4.layer.cornerRadius = 20.20
        view5.layer.cornerRadius = 20.20
        view6.layer.cornerRadius = 20.20
        
    }
    
    @IBAction func mutualFundAction(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "mutualfund") as! mutualfund
        navigationController?.pushViewController(neviget, animated: true)
        
    }
  
    
    @IBAction func interestActionBtn(_ sender: Any) {
        let neviget2 = storyboard?.instantiateViewController(identifier: "interestpage") as! interestpage
        navigationController?.pushViewController(neviget2, animated: true)
        
        
    }
   
    
    @IBAction func discountActionBtn(_ sender: Any) {
        let neviget3 = storyboard?.instantiateViewController(identifier: "Discountpage") as! Discountpage
        navigationController?.pushViewController(neviget3, animated: true)
        
    }
   
    
    @IBAction func EmiActionBtn(_ sender: Any) {
        let neviget4 = storyboard?.instantiateViewController(identifier: "Emi_page") as! Emi_page
        navigationController?.pushViewController(neviget4, animated: true)
    }
  
    
    @IBAction func schoolResultActionBtn(_ sender: Any) {
        let neviget5 = storyboard?.instantiateViewController(identifier: "schoolresult1") as! schoolresult1
        navigationController?.pushViewController(neviget5, animated: true)
    }
   
    @IBAction func squareOrHourActionBtn(_ sender: Any) {
        let neviget6 = storyboard?.instantiateViewController(identifier: "schoolresult2") as! schoolresult2
        navigationController?.pushViewController(neviget6, animated: true)
        
    }
    


}
