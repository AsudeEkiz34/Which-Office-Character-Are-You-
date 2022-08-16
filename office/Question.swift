//
//  Question.swift
//  office
//
//  Created by Asude Ekiz on 16.08.2022.
//

import Foundation
struct Question {
    let question:String
    let micheal:Int
    let dwight:Int
    let pam:Int
    let jim:Int
    let kelly:Int
    let kevin:Int
    
    init(q:String,micheal:Int,dwight:Int,pam:Int,jim:Int,kelly:Int,kevin:Int) {
        question=q
        self.micheal=micheal
        self.dwight=dwight
        self.pam=pam
        self.jim=jim
        self.kelly=kelly
        self.kevin=kevin
    }
}
