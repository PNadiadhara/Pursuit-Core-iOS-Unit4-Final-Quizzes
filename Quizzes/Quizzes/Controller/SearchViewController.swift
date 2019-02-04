//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    let searchView = SearchView()
    
    private var quizzes = [Quiz](){
        didSet {
            DispatchQueue.main.async {
                self.searchView.searchCollectionView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchView)
        navigationItem.title = "Search Online"
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        searchView.searchCollectionView.dataSource = self
        searchView.searchCollectionView.delegate = self
        searchView.searchCollectionView.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "SearchCell")
        
        getOnlineQuiz()
        
    }
    
    func getOnlineQuiz(){
        QuizAPIClient.getQuiz { (error, data) in
            if let error = error {
                print(error)
            } else if let data = data {
                self.quizzes = data
            }
        }
    }
    

    
}

extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quizzes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = searchView.searchCollectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCollectionViewCell else {return UICollectionViewCell()}
            let cellToSet = quizzes[indexPath.row]
        cell.quizTitle.text = cellToSet.quizTitle
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cellToSet = quizzes[indexPath.row]
        let detail = QuizDetailViewController.init(id: cellToSet.id, quizTitle: cellToSet.quizTitle, facts: cellToSet.facts)
            self.navigationController?.pushViewController(detail, animated: true)
    }

    
}
