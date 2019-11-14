//
//  ViewController.swift
//  jStudy
//
//  Created by Yoana Ugarte on 12/11/2019.
//  Copyright © 2019 Yoana Ugarte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var temas = [Lesson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        read()
        //let vc = self.storyboard?.instantiateViewController(withIdentifier: "TutorialInicialVC") as! TutorialInicialVC
        
    }
    
    @IBAction func abrirExamen(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ExamViewController") as! ExamViewController
        vc.examen = Examen(temas[0], .vocabulario)
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        self.present(navController, animated: true, completion: nil)
    }
    
    @IBAction func abrirVocabulario(_ sender: Any) {
        //ListaVocabularioTVC
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ListaVocabularioTVC") as! ListaVocabularioTVC
        vc.deck = Examen(temas[0], .vocabulario).deck
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        self.present(navController, animated: true, completion: nil)
    }
    
    

    func read(){
        let url = Bundle.main.url(forResource: "temas", withExtension: "json")!
        do {
            let jsonData = try! Data(contentsOf: url)
//            let json = try JSONSerialization.jsonObject(with: jsonData) as! [[[String: Any]]]
//            let json = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [[String: Any]]
//            print(json)
            
            
            let decoder = JSONDecoder()
            let x = try decoder.decode([Lesson].self, from: jsonData)
            temas = x
            print(x)
            
        }
        catch {
            print(error)
        }
    }
    

}

