//
//  ProfileViewController.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit
//SET IMAGE AS A CIRCLE
//    image.layer.borderWidth = 1
//    image.layer.masksToBounds = false
//    image.layer.borderColor = UIColor.black.cgColor
//    image.layer.cornerRadius = image.frame.height/2
//    image.clipsToBounds = true

class ProfileViewController: UIViewController {
    let profileView = ProfileView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: have nav titile update with user info
        view.addSubview(profileView)
        navigationItem.title = "User Profile"
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        profileView.profiles.dataSource = self
        profileView.profiles.delegate = self
        profileView.profiles.register(ProfileTableViewCell.self, forCellReuseIdentifier: "UserDetail")
    }
 

}

extension ProfileViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = profileView.profiles.dequeueReusableCell(withIdentifier: "UserDetail", for: indexPath) as? ProfileTableViewCell else { return  UITableViewCell()}
        cell.profileName.text = "Place Holder"
        cell.profileName.textColor = .black
        cell.profileName.textAlignment = .center
        cell.profilePicture.setBackgroundImage(UIImage(named: "profile-unfilled"), for: .normal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    
}
