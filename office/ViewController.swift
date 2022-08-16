//
//  ViewController.swift
//  office

//  Created by Asude Ekiz on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {
    var quizBrain=QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(flag:isItEnd)
    }
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var characterView: UIImageView!
    @IBAction func yesButton(_ sender: UIButton) {
    }
    @IBAction func noButton(_ sender: UIButton) {
    }
    var isItEnd=0
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer=sender.currentTitle
        
        quizBrain.checkAnswerAndUpdateScores(userAnswer!)
        isItEnd = quizBrain.nextQuestion()
        updateUI(flag:isItEnd)
        
    }
   

    
    func updateUI(flag:Int){
        if flag == 0 { 
            questionLabel.text=quizBrain.getQuestion()
            characterView.image = UIImage(named: "dunder")
            
        }
        
        else{
            
            let character = quizBrain.findResultCharacter()
            characterView.image = UIImage(named:character)
            questionLabel.text = "You are \(character)!!\n\n\n Click any button to resolve the test."
        }
        
       
    }
    

    
    
    
}
    


