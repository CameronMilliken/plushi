//
//  PlaylistTableViewController.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

// TODO: - Fully link tbv with data model
class PlaylistTableViewController: UITableViewController {

	// Mark: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "playlistCell", for: indexPath) as? PlaylistTableViewCell else { print("Unable to cast cell correctly.") ; return UITableViewCell()}
		cell.playlist = PlaylistController.shared.playlists[indexPath.row]
        return cell
    }

	// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}
