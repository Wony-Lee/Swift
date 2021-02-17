//
//  ViewController.swift
//  Sample
//
//  Created by 이윤원 on 2021/02/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Clickme(_ sender: Any) {
        let alert = UIAlertController(title: "Hello", message: "World", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated:true, completion:nil)
        
    }
    
}

