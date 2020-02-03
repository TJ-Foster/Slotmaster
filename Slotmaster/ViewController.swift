//
//  ViewController.swift
//  Slotmaster
//
//  Created by TJ Foster on 2020-02-03.
//  Copyright © 2020 TJ Foster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var slotLeft: UIImageView!
    @IBOutlet weak var slotMiddle: UIImageView!
    @IBOutlet weak var slotRight: UIImageView!
    
    let imageNames = ["cherries","lemon","number7","dollarsign","grapes"]
    
    @IBOutlet weak var scoreTaunt: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    var totalScoreNumber = 0
    @IBOutlet weak var resultScore: UILabel!
    @IBAction func playButtonTapped(_ sender: UIButton) {
        let randImage1 = imageNames.randomElement()
        let randImage2 = imageNames.randomElement()
        let randImage3 = imageNames.randomElement()
        if  let imageName1 = randImage1,
            let imageName2 = randImage2,
            let imageName3 = randImage3{
            slotLeft.image = UIImage(named: imageName1)
            slotMiddle.image = UIImage(named: imageName2)
            slotRight.image = UIImage(named: imageName3)
        }
        
        if  slotLeft.image == slotMiddle.image ||
            slotLeft.image == slotRight.image ||
            slotMiddle.image == slotRight.image{
            resultScore.text = "You scored 2 points!"
            totalScoreNumber = totalScoreNumber + 2
        }
        else if slotLeft.image == slotMiddle.image &&
                slotLeft.image == slotRight.image{
                resultScore.text = "You scored 3 points! WOW!"
//            totalScoreInt = totalScoreInt + 2
        }
        else {
            resultScore.text = "You scored 0 points! LOL!"
        }
        totalScore.text = "\(totalScoreNumber)"
        if totalScoreNumber > 9 && totalScoreNumber < 19{
            scoreTaunt.text = "Okay, you have enough points"
        }
        else if totalScoreNumber > 19 && totalScoreNumber < 29{
            scoreTaunt.text = "Dude, stop it"
        }
        else if totalScoreNumber > 29 && totalScoreNumber < 39{
            scoreTaunt.text = "We are running out of points!"
        }
        else if totalScoreNumber > 39 {
            scoreTaunt.text = "STOP"
        }
    }
}
