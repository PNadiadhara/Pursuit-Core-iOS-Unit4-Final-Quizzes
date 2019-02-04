//
//  UserCreatedQuiz.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/4/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct UserCreatedQuiz : Codable {
    let id : String
    let quizTitle : String
    let facts : [String]
    let createdAt: String
}
