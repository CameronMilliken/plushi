//
//  User.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import Foundation

class User {
	
	var username: String
	var email: String
	var password: String
	var id: String
	var following: [User]
	var followedBy: [User]
	
	init(username: String, email: String, password: String, id: String, following: [User] = [], followedBy: [User] = []) {
		self.username = username
		self.email = email
		self.password = password
		self.following = following
		self.followedBy = followedBy
		self.id = id
	}
}
