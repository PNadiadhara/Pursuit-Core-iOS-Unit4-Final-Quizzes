//
//  CreateViewController.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    let createView = CreateView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(createView)
        navigationItem.title = "Create Quiz"
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }

    

    

}

extension CreateViewController : UITextFieldDelegate {
    
}
