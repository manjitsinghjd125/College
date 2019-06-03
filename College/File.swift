//
//  File.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//

import Foundation
import UIKit
class ListOfColleges{
    public private(set) var College_name: String
    public private(set) var College_image: UIImage
    public private(set) var Location: String
    
    init(college_name: String, college_image: UIImage,location: String) {
        self.College_name = college_name
        self.College_image = college_image
        self.Location = location
        
    }
    
    func setName(name: String){
        self.College_name = name
    }
    func setImage(image: UIImage){
        self.College_image = image
    }
    func setLocation(location: String){
        self.Location = location
    }
    
}
