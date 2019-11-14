//
//  ExamViewController.swift
//  jStudy
//
//  Created by Yoana Ugarte on 14/11/2019.
//  Copyright © 2019 Yoana Ugarte. All rights reserved.
//

import UIKit

class ExamViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    var index = 0
    
    var examen : Examen!
    
    @IBOutlet weak var palabra: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.becomeFirstResponder()
        palabra.text = examen.deck[index].front
    }
    @IBAction func comprobar(_ sender: Any) {
        if let respuesta = textField.text{
            if respuesta == examen.deck[index].back{
                print("OK")
                if index < examen.deck.count - 1{
                    index += 1
                    palabra.text = examen.deck[index].front
                    textField.text = nil
                }
            }else{
                print("Incorrecto")
            }
        }
    }
    
    @IBAction func cerrar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
