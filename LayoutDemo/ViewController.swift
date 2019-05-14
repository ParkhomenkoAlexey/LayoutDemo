//
//  ViewController.swift
//  LayoutDemo
//
//  Created by Алексей Пархоменко on 14/05/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let redView = RedView()
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    var centerX: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
//        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerX = redView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        centerX?.isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    @IBAction func buttonTapped(_ sender: Any) {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2) {
            //self.heightConstraint.constant = 250
            self.centerX?.constant = 100
            self.view.layoutIfNeeded()
        }
    }
}

