//
//  ProfileTableViewCell.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    lazy var profileName: UILabel = {
        let label = UILabel()
        return label
    }()
    //This Should be a button that allows image to be set
    lazy var profilePicture : UIButton = {
        let picture = UIButton()
        
        return picture
    }()
    //

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "UserDetail")
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setConstraints(){
        setProfilePicConstraints()
        setProfileNameConstraints()
    }
    
    func setProfilePicConstraints(){
        addSubview(profilePicture)
        profilePicture.translatesAutoresizingMaskIntoConstraints = false
        
        [profilePicture.centerXAnchor.constraint(equalTo: centerXAnchor),
         profilePicture.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11),
         profilePicture.heightAnchor.constraint(equalToConstant: 75),
         profilePicture.widthAnchor.constraint(equalToConstant: 75)
         ].forEach {$0.isActive = true}
    }
    
    func setProfileNameConstraints(){
        addSubview(profileName)
        profileName.translatesAutoresizingMaskIntoConstraints = false
        
        [profileName.topAnchor.constraint(equalTo: profilePicture.bottomAnchor, constant: 33),
         profileName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11),
         profileName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11)
         ].forEach{$0.isActive = true}
    }

}
