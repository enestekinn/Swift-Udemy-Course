//
//  ViewController.swift
//  CatchTheKenny
//
//  Created by Enes Tekin on 8.03.2023.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var kenny1: UIImageView!
    
    @IBOutlet weak var kenny2: UIImageView!
    
    @IBOutlet weak var kenny3: UIImageView!
    
    @IBOutlet weak var kenny4: UIImageView!
    
    @IBOutlet weak var kenny5: UIImageView!
    
    @IBOutlet weak var kenny6: UIImageView!
    
    @IBOutlet weak var kenny7: UIImageView!
    
    
    @IBOutlet weak var kenny8: UIImageView!
    
    @IBOutlet weak var kenny9: UIImageView!
    
    
    
    @IBOutlet weak var highscoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var hideTimer = Timer()
    var timer = Timer()
    
    
    
    var score = 0
    var counter = 10
    var highscore = 0
    
    
    
    
    var imageArray = [UIImageView]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let storedHighscore = UserDefaults.standard.object(forKey: "highscore")
        if storedHighscore  == nil {
            highscore = 0
            highscoreLabel.text = "Highscore: \(highscore)"

        }
        
        if let newScore = storedHighscore as? Int {
            highscore = newScore
            highscoreLabel.text = "Highscore: \(highscore)"
        }
            
 
        
            
        
        imageArray = [kenny1,kenny2,kenny3,kenny4,kenny5,kenny6,kenny7,kenny8,kenny9]
        
      
       
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScores))
        
        kenny1.addGestureRecognizer(recognizer1)
        kenny2.addGestureRecognizer(recognizer2)
        kenny3.addGestureRecognizer(recognizer3)
        kenny4.addGestureRecognizer(recognizer4)
        kenny5.addGestureRecognizer(recognizer5)
        kenny6.addGestureRecognizer(recognizer6)
        kenny7.addGestureRecognizer(recognizer7)
        kenny8.addGestureRecognizer(recognizer8)
        kenny9.addGestureRecognizer(recognizer9)
        
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
        hideTimer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(hideKenny) , userInfo: nil, repeats: true)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nibName, repeats: true)
        
        
        hideKenny()
        
    }
    
    
    
    @objc func increaseScores(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func hideKenny(){
        print("hide image called")
        for image in imageArray {
            image.isHidden = true
        }
        
        let randomNumber = Int.random(in: 0...8)
        imageArray[randomNumber].isHidden = false
        
    }
    
   @objc func countDown() {
        counter -= 1
       
       timeLabel.text = "\(counter)"
       if counter == 0 {
           timer.invalidate()
           hideTimer.invalidate()
           
           if self.score > self.highscore {
               
               self.highscore = self.score
               highscoreLabel.text = "Highscore: \(highscore)"
               UserDefaults.standard.set(self.highscore, forKey: "highscore")
           }
           
         
           for image in imageArray {
               image.isHidden = true
           }
           
           let alert = UIAlertController(title: "Time is up", message: "Do you want to play again?", preferredStyle: .alert)
           let ok = UIAlertAction(title: "OK", style: .cancel)
           alert.addAction(ok)
           
           let replay = UIAlertAction(title: "Replay", style: .default,handler: { [self] (UIAlertAction) in
               self.score = 0
               self.scoreLabel.text = "Score: \(self.score)"
               self.counter = 10
               
               hideTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(hideKenny) , userInfo: nil, repeats: true)
               timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nibName, repeats: true)
          
           }    )
           
           alert.addAction(replay)
           
           self.present(alert, animated: true)
        
       }
       
    
       
    }
    
    
    
    


}

