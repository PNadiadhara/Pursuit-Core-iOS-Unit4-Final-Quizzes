//
//  CreateView.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {
    
    lazy var quizTitle : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Quiz title"
        textField.backgroundColor = .white
        
        
        return textField
    }()
    
    lazy var quizFactOne : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter first fact"
        textField.backgroundColor = .white
        
        
        return textField
    }()
    
    lazy var quizFactTwo : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter second fact"
        textField.backgroundColor = .white

        
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setConstraints()
        quizTitle.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        setQuizTitleConstraints()
        setQuizFactOneConstrains()
        setQuizFactTwoConstraints()
    }
    
    func setQuizTitleConstraints() {
        addSubview(quizTitle)
        quizTitle.translatesAutoresizingMaskIntoConstraints = false
        
        [quizTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11),
         quizTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11 ),
         quizTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11)
            ].forEach{$0.isActive = true}
    }
    
    func setQuizFactOneConstrains() {
        addSubview(quizFactOne)
        quizFactOne.translatesAutoresizingMaskIntoConstraints = false
        
        [quizFactOne.topAnchor.constraint(equalTo: quizTitle.bottomAnchor, constant: 11),
         quizFactOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         quizFactOne.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         quizFactOne.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
            ].forEach{$0.isActive = true}
        
    }
    
    func setQuizFactTwoConstraints() {
        addSubview(quizFactTwo)
        quizFactTwo.translatesAutoresizingMaskIntoConstraints = false
        
        [quizFactTwo.topAnchor.constraint(equalTo: quizFactOne.bottomAnchor, constant: 11),
         quizFactTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         quizFactTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
            quizFactTwo.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
].forEach{$0.isActive = true}
    }
}
