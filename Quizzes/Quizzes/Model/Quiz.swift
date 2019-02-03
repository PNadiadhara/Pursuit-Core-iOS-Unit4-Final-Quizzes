//
//  Quiz.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation


struct Quiz: Codable {
    let id : String
    let quizTitle : String
    let facts : [String]
}


//THIS IS HOW JSON DATA IS FORMATTED

//"id": "1",
//"quizTitle": "What is the difference between Synchronous & Asynchronous task",
//"facts": [
//"Synchronous: waits until the task have completed",
//"Asynchronous: completes a task in the background and can notify you when complete"
//]
