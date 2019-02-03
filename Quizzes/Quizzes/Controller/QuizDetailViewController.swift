//
//  QuizDetailViewController.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizDetailViewController: UIViewController {
    
    var detailedView = QuizDetailView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        self.view.addSubview(detailedView)
        detailedView.quizDetailCollectionView.dataSource = self
        detailedView.quizDetailCollectionView.delegate = self
        
        self.detailedView.quizDetailCollectionView.register(QuizDetailCollectionViewCell.self, forCellWithReuseIdentifier: "QuizDetailedCell")
        
    }
    

  

}

extension QuizDetailViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = detailedView.quizDetailCollectionView.dequeueReusableCell(withReuseIdentifier: "QuizDetailedCell", for: indexPath) as? QuizDetailCollectionViewCell else {return UICollectionViewCell()}
        
        cell.quizTitle.text = "Placeholder"
        cell.backgroundColor = .white
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        //        UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
//            self.cat.setImage(UIImage(named: "cat"), for: .normal)
//
//        })
    }
}
