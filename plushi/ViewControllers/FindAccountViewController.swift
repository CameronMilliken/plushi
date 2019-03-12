//
//  FindAccountViewController.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class FindAccountViewController: UIViewController {

	// Mark: - Outlets
	@IBOutlet weak var spotifyButton: UIButton!
	@IBOutlet weak var appleMusicButton: UIButton!
	@IBOutlet weak var appleMusicSelectedView: UIView!
	@IBOutlet weak var spotifySelectedView: UIView!
	@IBOutlet weak var findAccountButton: UIButton!
	
	// Mark: - Params
	var spotifySelected = false
	var appleMusicSelected = false
	
	// Mark: - Lifecycle
	override func viewDidLoad() {
        super.viewDidLoad()
		setUp()
    }
	
	// Mark: - Actions
	@IBAction func appleMusicButtonTapped(_ sender: Any) {
		spotifySelected = false
		appleMusicSelected = true
		spotifySelectedView.animateShrink()
		appleMusicSelectedView.animatePop()
	}
	@IBAction func spotifyButtonTapped(_ sender: Any) {
		appleMusicSelected = false
		spotifySelected = true
		appleMusicSelectedView.animateShrink()
		spotifySelectedView.animatePop()
	}
	@IBAction func findAccountButtonTapped(_ sender: Any) {
		// TODO: - Authenticate user
	}
	
	// Mark: - Functions
	func setUp() {
		spotifySelectedView.backgroundColor = #colorLiteral(red: 0.7883887887, green: 0.7393109202, blue: 1, alpha: 1)
		appleMusicSelectedView.backgroundColor = #colorLiteral(red: 0.7883887887, green: 0.7393109202, blue: 1, alpha: 1)
		appleMusicSelectedView.layer.cornerRadius = appleMusicSelectedView.bounds.width / 2
		spotifySelectedView.layer.cornerRadius = spotifySelectedView.bounds.width / 2
		findAccountButton.layer.cornerRadius = 10
	}

	// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}
