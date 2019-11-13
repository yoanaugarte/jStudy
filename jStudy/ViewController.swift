//
//  ViewController.swift
//  jStudy
//
//  Created by Yoana Ugarte on 12/11/2019.
//  Copyright © 2019 Yoana Ugarte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        read()
        
        
    }

    func read(){
        let url = Bundle.main.url(forResource: "hiragana", withExtension: "json")!
        do {
            let jsonData = try! Data(contentsOf: url)
//            let json = try JSONSerialization.jsonObject(with: jsonData) as! [[[String: Any]]]
//            let json = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [[String: Any]]
//            print(json)
            
            
            let decoder = JSONDecoder()
            let x = try decoder.decode([Kana].self, from: jsonData)
            
            print(x)
            
        }
        catch {
            print(error)
        }
    }
    

}

