//
//  ViewController.swift
//  EightBall
//
//  Created by Reza Koushki on 09/08/2022.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var imageView: UIImageView!
	
	var ballArray = [
		UIImage(imageLiteralResourceName: "ball1"),
		UIImage(imageLiteralResourceName: "ball2"),
		UIImage(imageLiteralResourceName: "ball3"),
		UIImage(imageLiteralResourceName: "ball4")
	]
	
	var ballNumber = -1

	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	@IBAction func answerButtonPressed(_ sender: UIButton) {
		
		var newBallNumber = Int.random(in: 0...3)
		
		while ballNumber == newBallNumber {
			newBallNumber = Int.random(in: 0...3)
		}
		ballNumber = newBallNumber
		imageView.image = ballArray[ballNumber]
	}
	
}

