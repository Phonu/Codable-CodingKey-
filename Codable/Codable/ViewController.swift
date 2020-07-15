//
//  ViewController.swift
//  Codable
//
//  Created by mac admin on 30/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let empModel = Employee()

    override func viewDidLoad() {
        super.viewDidLoad()
        parseJsonData()

    }
    
    func parseJsonData() {
        
        if let path = Bundle.main.path(forResource: "sampleJson", ofType: "json") {
            print("path is \(path)")
            
            do {
                let url = URL(fileURLWithPath: path)
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let jsonData = try decoder.decode(Employee.self, from: data)
                print(jsonData)

//                let jsondata = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//                let jsonResult = jsondata as? [String:String]
//                print(jsonResult)
            } catch let err as Error{
                print(err)
            }
        }
        
    }


}



  
