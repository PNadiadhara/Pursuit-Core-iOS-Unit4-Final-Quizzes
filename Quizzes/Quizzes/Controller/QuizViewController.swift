//
//  QuizViewController.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    let quizView = QuizzView()
    
    var userSavedArrays = [UserCreatedQuiz]() {
        didSet{
        DispatchQueue.main.async {
            self.quizView.quizCollectionView.reloadData()
        }
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(quizView)
        navigationItem.title = "Quizzes"
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        quizView.quizCollectionView.dataSource = self
        quizView.quizCollectionView.delegate = self
        quizView.quizCollectionView.register(QuizCollectionViewCell.self, forCellWithReuseIdentifier: "QuizCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    func getDataFromDocumentsDirectory() {
        self.userSavedArrays = UserQuizzesFileManager.getFavoriteQuizzes()
        self.quizView.quizCollectionView.reloadData()
    }


}

extension QuizViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userSavedArrays.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = quizView.quizCollectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCollectionViewCell else { return UICollectionViewCell()}
        cell.quizTitle.text = userSavedArrays[indexPath.row].quizTitle
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}
