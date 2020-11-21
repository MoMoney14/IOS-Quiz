//
//  QuizBrain.swift
//  Quiz
//
//  Created by Mahoto Sasaki on 6/5/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q:"4+2=6", a:"True"),
        Question(q:"5-3>1", a:"True"),
        Question(q:"3+8<10", a:"False")
    ]
    
    var questionNumber = 0
    var score = 0

    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score+=1
            return true
        } else {
            return false
        }
    }
    
    func getQuestion() -> String {
        return quiz[questionNumber].question
    }
    
    mutating func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber+=1
        } else {
            questionNumber=0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
}
