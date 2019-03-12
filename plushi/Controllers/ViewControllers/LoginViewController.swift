//
//  LoginViewController.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

	// Mark: - Outlets
	@IBOutlet weak var usernameField: CustomTextField!
	@IBOutlet weak var passwordField: CustomTextField!
	@IBOutlet weak var loginButton: UIButton!
	
	// Mark: - Lifecycle
	override func viewDidLoad() {
        super.viewDidLoad()
		setUp()
    }
	
	// Mark: - Actions
	@IBAction func loginButtonTapped(_ sender: Any) {
		// TODO: - Login functionality
	}
	
	func setUp() {
		usernameField.layer.cornerRadius = 5
		passwordField.layer.cornerRadius = 5
		loginButton.layer.cornerRadius = 10
	}
	
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// TODO: - Pass user object to account view
    }
}
