//
//  UserProfiles.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/4/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct UserProfile : Codable {
    let profileName : String
    let profilePicutre : Data
    let profileFilePath : String
    let createdAt :  String
}
