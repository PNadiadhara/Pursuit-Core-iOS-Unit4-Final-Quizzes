//
//  QuizDetailCollectionViewCell.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizDetailCollectionViewCell: UICollectionViewCell {
    
    lazy var quizTitle : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Title and fact goes here"
        label.numberOfLines = 0
        
        return label
    }()
    
    lazy var quizFact : UITextView = {
        let label = UITextView()
        label.textAlignment = .center
        label.text = "Title and fact goes here"
        
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupQuizTitleConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupQuizTitleConstraints() {
        
        addSubview(quizTitle)
        quizTitle.translatesAutoresizingMaskIntoConstraints = false
        
        [quizTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
         quizTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
         quizTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         quizTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11)
            ].forEach {$0.isActive = true}
        
    }
    
 
    
}
