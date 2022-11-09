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
    }
    
}

