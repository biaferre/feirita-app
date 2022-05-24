//
//  ViewController.swift
//  feirita
//
//  Created by Bof on 17/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let recognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight(_:)))
        recognizer.direction = .right
        self.view.addGestureRecognizer(recognizer)
        self.navigationItem.titleView?.tintColor = UIColor(red: 157, green: 83, blue: 83, alpha: 1)
        
    }

    @IBAction func openProfile(_ sender: UIButton) {
        
    }
    
    @objc func swipeRight(_ recognizer: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "Eu", sender: self)
    }
}
