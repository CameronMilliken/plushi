//
//  PlaylistTableViewCell.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {

	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	@IBOutlet weak var playlistImageView: UIImageView!
	
	var playlist: Playlist? {
		didSet {
			updateViews()
		}
	}
	
	override func awakeFromNib() {
        super.awakeFromNib()
    }
	
	func updateViews() {
		guard let playlist = playlist else { print("Playlist is nil") ; return }
		self.nameLabel.text = playlist.name
		self.descriptionLabel.text = playlist.songs.count == 1 ? "\(playlist.songs.count) song" : "\(playlist.songs.count) songs"
		self.playlistImageView.image = playlist.image
	}
}
