//
//  ViewController.swift
//  calculator master
//
//  Created by R92 on 10/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startappbuttton: UIButton!
    
    
    @IBOutlet weak var aboutusbutton: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.layer.cornerRadius = 50.50
     
    
    }
    
    
    @IBAction func startappbutonaction(_ sender: Any) {
        naviget()
       
    }
    func naviget(){
        let a = storyboard?.instantiateViewController(identifier: "menupagee")as! menupagee
        navigationController?.pushViewController(a, animated: true)
       
    }
    
    
    @IBAction func aboutusaction(_ sender: Any) {
        
       neviget2()
        
    }
    func neviget2(){
        let neviget = storyboard?.instantiateViewController(identifier: "aboutus") as! aboutus
        navigationController?.pushViewController(neviget, animated: true)
    }
    
}
