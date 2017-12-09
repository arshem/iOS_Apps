//
//  AppDelegate.swift
//  Quiz Master
//
//  Created by Arshem Web Solutions www.arshem.com
//  Copyright (c) 2017 Arshem Web Solutions. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNum : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else {
            pickedAnswer = false
        }
        checkAnswer(answer : pickedAnswer)
    }
    
    
    func updateUI(correct : Bool) {
        if(correct == true) {
            score += 1
        }
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = String("\(questionNum+1)/13")
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNum+1)
        questionNum += 1
    }
    

    func nextQuestion() {
        if(questionNum <= 12) {
            questionLabel.text = allQuestions.list[Int(questionNum)].questionText
        }
        else {
            let alertUser = UIAlertController(title: "End of Quiz!", message: "Congrats! You've scored \(score) points", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in self.startOver()})
            alertUser.addAction(restartAction)
            present(alertUser, animated: true, completion: nil)
       }
    }
    
    
    func checkAnswer(answer : Bool) {
        let correctAnswer = allQuestions.list[Int(questionNum)].answer
        
        if answer == correctAnswer {
            // Correct!
            updateUI(correct : true)

        }
        else {
            // Incorrect
            updateUI(correct : false)
       }
        nextQuestion()

    }
    
    
    func startOver() {
        questionNum = 0
        score = 0
        updateUI(correct: false)
    }
    

    
}
