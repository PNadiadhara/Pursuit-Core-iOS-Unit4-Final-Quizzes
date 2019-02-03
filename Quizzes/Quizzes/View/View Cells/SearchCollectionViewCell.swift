//
//  SearchCollectionViewCell.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    lazy var quizTitle : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        
        return label
    }()
    
    lazy var quizOptionsButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "add-icon-filled"), for: .normal)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        setQuizTitleConstraints()
        setQuizOptionsButtonConstraints()
    }
    
    func setQuizTitleConstraints(){
        addSubview(quizTitle)
        quizTitle.translatesAutoresizingMaskIntoConstraints = false
        
        [quizTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
         quizTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
         quizTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         quizTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11)
            ].forEach {$0.isActive = true}
    }
    
    func setQuizOptionsButtonConstraints() {
        addSubview(quizOptionsButton)
        quizOptionsButton.translatesAutoresizingMaskIntoConstraints = false
        
        [quizOptionsButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
         quizOptionsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),
         quizOptionsButton.heightAnchor.constraint(equalToConstant: 30),
         quizOptionsButton.widthAnchor.constraint(equalToConstant: 30)
            ].forEach{$0.isActive = true}
        
    }
    
}
