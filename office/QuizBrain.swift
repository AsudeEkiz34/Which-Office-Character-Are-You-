//
//  QuizBrain.swift
//  office
//
//  Created by Asude Ekiz on 16.08.2022.
//

import Foundation
struct QuizBrain {
   
    var michaelScore=0
    var dwightScore=0
    var jimScore=0
    var pamScore=0
    var kellyScore=0
    var kevinScore=0
    
    var questionNumber=0
    var scoreList=[0,0,0,0,0,0]
    
    let questionList=[Question(q: "Let's get started.", micheal: 0, dwight: 0, pam: 0, jim: 0, kelly: 0, kevin: 0),
        Question(q: "Gossip at work is one of the most enjoyable things. ", micheal: 1, dwight: -1, pam: 3, jim: 1, kelly: 3, kevin: 3),
        Question(q: "I can stay calm and manage the process in a dangerous situations. ", micheal: -3, dwight: 5, pam: -1, jim: 3, kelly: 3, kevin: 2),
        Question(q: "I have no limits, I can stretch any joke forever.", micheal: 2, dwight: 5, pam: 3, jim: 4, kelly: -1, kevin: -1),
        Question(q: "When business life is mentioned, I come to mind.", micheal: 3, dwight: 3, pam: -2, jim: 2, kelly: 5, kevin: -1),
        Question(q: "Romantic relationships are just for me, I value loving and being loved very much.", micheal: 4, dwight: -3, pam: 3, jim: 4, kelly: 5, kevin: 1),
        Question(q: "Eating is more of a priority to me than anything else.", micheal: 1, dwight: 1, pam: 1, jim: 1, kelly: 1, kevin: 5),
        Question(q: "I don't mind making fun of people, you could say I'm a bit inconsiderate.", micheal: 4, dwight: 3, pam: 4, jim: 4, kelly: 2, kevin: 2),
        Question(q: "I describe myself as a smart person.", micheal: 2, dwight: 5, pam: -1, jim: 2, kelly: 3, kevin: 5),
        Question(q: "I'm closely interested in art, I always wanted to be an artist.", micheal: -1, dwight: -2, pam: 5, jim: -3, kelly: 3, kevin: -3),
        Question(q: "I'm good at motivating people, I describe myself as a supportive person.", micheal: 4, dwight: 1, pam: 3, jim: 5, kelly: 1, kevin: 1)
        ]
    
   
   
    
    
    func getQuestion() -> String {
        return questionList[questionNumber].question
    }
   
    mutating func nextQuestion()->Int{
        questionNumber=(questionNumber+1)%11
       
        if questionNumber==0 {
            refreshAllData()
            return 1 //this is final question and there will be some processes
        }
        else{
        return 0
        }
    }
    
    mutating func checkAnswerAndUpdateScores(_ userAnswer:String){
        print("questionNumber:",questionNumber)
        if userAnswer=="YES" {
            
            michaelScore+=questionList[questionNumber].micheal
            dwightScore+=questionList[questionNumber].dwight
            pamScore+=questionList[questionNumber].pam
            jimScore+=questionList[questionNumber].jim
            kellyScore+=questionList[questionNumber].kelly
            kevinScore+=questionList[questionNumber].kevin
            
            updateScores()
            print(scoreList)
        }
        else{
            updateScores()
            print(scoreList)
        }
    }
    
    mutating func updateScores(){
        scoreList[0]=michaelScore
        scoreList[1]=dwightScore
        scoreList[2]=pamScore
        scoreList[3]=jimScore
        scoreList[4]=kellyScore
        scoreList[5]=kevinScore
    }
    
    func findResultCharacter()->String{
        var resultCharacter:String?=nil
        //print("Score list in the method")
        //print(scoreList)
        let (maxIndex, maxValue) = scoreList.enumerated().max(by: { $0.element < $1.element })!
        
        //print("Max Index:\(maxIndex)","Max Value:\(maxValue)")
        switch maxIndex {
        case 0:
            resultCharacter="Micheal Scott"
        case 1:
            resultCharacter="Dwight Scrute"
        case 2:
            resultCharacter="Pam Beesly"
        case 3:
            resultCharacter="Jim Halpert"
        case 4:
            resultCharacter="Kelly Kapoor"
        case 5:
            resultCharacter="Kevin Malone"
        default:
            resultCharacter="error"
        }
        return resultCharacter!
    }
    
  
   
    
    mutating func refreshAllData(){
        michaelScore=0
        dwightScore=0
        jimScore=0
        pamScore=0
        kellyScore=0
        kevinScore=0
        
    }
    
    
}//end of the struct

