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

//https://stackoverflow.com/questions/26567413/get-input-value-from-textfield-in-ios-alert-in-swift

class ProfileViewController: UIViewController {
    
    let profileView = ProfileView()
    let arrayOfExistingProfiles = [UserProfile]()
    var loginTextField : UITextField?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: have nav titile update with user info
        view.addSubview(profileView)
        navigationItem.title = "User Profile"
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        profileView.profiles.dataSource = self
        profileView.profiles.delegate = self
        userLogin()
        profileView.profiles.register(ProfileTableViewCell.self, forCellReuseIdentifier: "UserDetail")
    }
    
    func userLogin(){
    let alert = UIAlertController.init(title: "Enter User Name", message: "No Spaces or Special Charaters", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Profile Name"
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert!.textFields![0] // Force unwrapping because we know it exists.
            print("Text field: \(textField.text)")
        }))
        
        self.present(alert, animated: true, completion: nil)

        

    }
    

 

}

extension ProfileViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if arrayOfExistingProfiles.count == 0 {
            return 1
        } else {
        return arrayOfExistingProfiles.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = profileView.profiles.dequeueReusableCell(withIdentifier: "UserDetail", for: indexPath) as? ProfileTableViewCell else { return  UITableViewCell()}
        cell.profileName.setTitle("Create A Profile", for: .normal)
        cell.profileName.setTitleColor(.black, for: .normal)
        cell.profilePicture.setBackgroundImage(UIImage(named: "profile-unfilled"), for: .normal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    
}
