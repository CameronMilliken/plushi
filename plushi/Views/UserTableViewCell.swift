//
//  UserTableViewCell.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

	// Mark: - Outlets
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	@IBOutlet weak var followButton: UIButton!
	
	// Mark: - Params
	var user: User? {
		didSet{
			updateViews()
		}
	}
	weak var delegate: UserTableViewCellDelegate?
	
	// Mark: - Lifecycle
	override func awakeFromNib() {
		super.awakeFromNib()
		followButton.layer.cornerRadius = 10
	}
	
	// Mark: - Actions
	@IBAction func followButtonTapped(_ sender: UIButton) {
		guard let user = user else { print("User object not set") ; return }
		delegate?.followButtonTapped(userId: user.id)
	}
	
	// Mark: - Functions
	func updateViews() {
		guard let user = user else { return }
		self.usernameLabel.text = user.username
		self.descriptionLabel.text = "\(user.followedBy.count) followers"
		// TODO: - Set friend button to "Follow" or "Unfollow" depending on whether the user's unique id is included in the loggedInUser's 'following' array.
	}
}

protocol UserTableViewCellDelegate: class {
	func followButtonTapped(userId: String)
}
