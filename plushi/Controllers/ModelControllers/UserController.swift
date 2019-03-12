//
//  UserController.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import Foundation

class UserController {
	
	// Mark: - Shared instance
	static let shared = UserController()
	
	// Mark: - SOT
	let loggedInUser: User? = nil
	
	// Mark: - User control
	func logInUserWith(email: String?, username: String?, password: String, completion: @escaping (Bool) -> Void) {
		// TODO: - Authenticate user: find account, compare password, if successful set loggedInUser property
	}
	
	func createUserAccount() {
		// TODO: - Create a new account with credentials provided on signup
	}
	
	func queryUsersBy(keyword: String, completion: @escaping ([User]) -> Void) {
		// TODO: - Query users by keyword
	}
}
