//
//  Question.swift
//  Quiz
//
//  Created by Mahoto Sasaki on 6/5/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import Foundation

struct Question {
    let question:String
    let answer:String
    
    init(q:String, a:String){
        question = q
        answer = a
    }
}
