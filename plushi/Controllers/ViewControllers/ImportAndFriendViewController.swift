//
//  ImportAndFriendViewController.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class ImportAndFriendViewController: UIViewController {
	
	// Mark: - Outlets
	@IBOutlet weak var importPlaylistButtonTapped: UIButton!
	@IBOutlet weak var findFriendsButton: UIButton!
	
	// Mark: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
		setUp()
	}
	
	// Mark: - Functions
	func setUp() {
		importPlaylistButtonTapped.layer.cornerRadius = 10
		findFriendsButton.layer.cornerRadius = 10
	}
}
