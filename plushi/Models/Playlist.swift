//
//  Playlist.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class Playlist {
	var name: String
	var songs: [Song]
	var image: UIImage
	
	init(name: String, songs: [Song], image: UIImage) {
		self.name = name
		self.songs = songs
		self.image = image
	}
}
