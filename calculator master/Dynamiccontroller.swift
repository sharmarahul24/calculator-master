//
//  Dynamiccontroller.swift
//  calculator master
//
//  Created by R92 on 31/01/24.
//

import UIKit

class Dynamiccontroller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        
    }
    
    func button(){
        var button = UIButton()
        
        button.setTitle("Done", for: .normal)
        button.backgroundColor = .green
        view.addSubview(button)
    }

   

}
