//
//  Sarniadetailaddmission.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//

import UIKit

class Sarniadetailaddmission: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var Userid: UILabel!
    
    @IBOutlet weak var pass: UILabel!
    var username : String = ""
    var password : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "House detail"
        
        
        misc()
        
    }
   
    func misc()
    {
        
        Userid.text = username
        pass.text = password
       
    }
    
    
}

