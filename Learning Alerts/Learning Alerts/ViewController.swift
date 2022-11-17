//
//  ViewController.swift
//  Learning Alerts
//
//  Created by Юрий Куринной on 08.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlertButton() {
        let alert = UIAlertController(title: "Photo Access", message: "Do you allow to use your photos?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Allow", style: .cancel)
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Don't allow", style: .default, handler: nil)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func showActionSheetButton() {
        
        enum Films: String {
            case film1 = "SpyderMan"
            case film2 = "Alladin"
            case film3 = "Heat"
        }
        
        let handler:(_ type: Films) -> (UIAlertAction) -> Void = { type in
            return { action in print(type.rawValue) }
        }
        
        let alert = UIAlertController(title: nil, message: "Choose fiim", preferredStyle: .actionSheet)
        
        let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handler(.film2))
        alert.addAction(film2)
        
        let film3 = UIAlertAction(title: Films.film3.rawValue, style: .default, handler: handler(.film3))
        alert.addAction(film3)
            
        let cancelAction = UIAlertAction(title: "Discard", style: .cancel)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
        
        
    }
    
}

