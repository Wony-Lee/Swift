//
//  ViewController.swift
//  Sample
//
//  Created by 이윤원 on 2021/02/17.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    
    @IBOutlet weak var RandomPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func Clickme(_ sender: Any) {
        
        let message = "가격은 \(currentValue)원 입니다."
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in self.refresh() })
        alert.addAction(action)
        present(alert, animated:true, completion:nil)

    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        RandomPrice.text = "₩ \(currentValue)"
    }
    
}

