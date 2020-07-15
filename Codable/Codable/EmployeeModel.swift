//
//  EmployeeModel.swift
//  Codable
//
//  Created by mac admin on 07/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import Foundation

struct Employee:Codable {
    var empName:String?
    var empDept:String?
    
    private enum CodingKeys: String, CodingKey {
               case empName = "name", empDept
//               case empDept
       }


 
}
