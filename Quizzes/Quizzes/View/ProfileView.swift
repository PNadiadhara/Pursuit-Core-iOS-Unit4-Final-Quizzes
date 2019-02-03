//
//  ProfileView.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    lazy var profiles : UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setTableViewConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTableViewConstraints(){
        addSubview(profiles)
        profiles.translatesAutoresizingMaskIntoConstraints = false
        
        [profiles.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
         profiles.heightAnchor.constraint(equalToConstant: 240),
         profiles.leadingAnchor.constraint(equalTo: leadingAnchor),
         profiles.trailingAnchor.constraint(equalTo: trailingAnchor)
         ].forEach{$0.isActive = true}
        
    }
}


