//
//  QuizDetailView.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizDetailView: UIView {

    lazy var quizDetailCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        let collectionView = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: layout)
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        quizDetailCollectionView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        setQuizDetailCollectionViewConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setQuizDetailCollectionViewConstraints(){
        addSubview(quizDetailCollectionView)
        quizDetailCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        [quizDetailCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
         quizDetailCollectionView.heightAnchor.constraint(equalTo: heightAnchor, constant: UIScreen.main.bounds.height),
         quizDetailCollectionView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor)
            ].forEach{$0.isActive = true}
    }
}


