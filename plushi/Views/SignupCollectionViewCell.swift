//
//  SignupCollectionViewCell.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class SignupCollectionViewCell: UICollectionViewCell {
	
	// Mark: - Outlets
	@IBOutlet weak var emailField: UITextField!
	@IBOutlet weak var usernameField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	@IBOutlet weak var confirmPasswordField: UITextField!
	@IBOutlet weak var signupButton: UIButton!
	@IBOutlet weak var signupWithGoogleButton: UIButton!
	
	// Mark: - Params
	var delegate: SignUpCollectionViewCellDelegate?
	
	// Mark: - Lifecycle
	override func awakeFromNib() {
		super.awakeFromNib()
		setUp()
	}
	
	// Mark: - Actions
	@IBAction func signupButtonTapped(_ sender: Any) {
		guard let delegate = delegate else { print("Delegate not set on sign up cell") ; return }
		delegate.signupButtonTapped()
	}
	@IBAction func signupWithGoogleButtonTapped(_ sender: Any) {
		guard let delegate = delegate else { print("Delegate not set on sign up cell") ; return }
		delegate.signUpWithGoogleButtonTapped()
	}
	
	// Mark: - Control
	func setUp() {
		emailField.layer.cornerRadius = 5
		usernameField.layer.cornerRadius = 5
		passwordField.layer.cornerRadius = 5
		confirmPasswordField.layer.cornerRadius = 5
		signupButton.layer.cornerRadius = 10
		signupWithGoogleButton.layer.cornerRadius = 10
	}
}

// Mark: - Delegate protocol
protocol SignUpCollectionViewCellDelegate: class {
	func signupButtonTapped()
	func signUpWithGoogleButtonTapped()
}
