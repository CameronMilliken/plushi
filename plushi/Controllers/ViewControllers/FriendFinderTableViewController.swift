//
//  FriendFinderTableViewController.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class FriendFinderTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as? UserTableViewCell else { print("Failed to cast cell correctly") ; return UITableViewCell()}
		
        return cell
    }

	// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

extension FriendFinderTableViewController: UserTableViewCellDelegate {
	
	func followButtonTapped(userId: String) {
		// TODO: - Update loggedInUser's 'following' array with user unique id.
	}
}
