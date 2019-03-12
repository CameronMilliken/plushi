//
//  Song.swift
//  plushi
//
//  Created by Ethan John on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import Foundation

class Song {
	var name: String
	var isrc: String
	var spotifyId: String?
	var appleMusicId: String?
	
	init(name: String, isrc: String, spotifyId: String?, appleMusicId: String?) {
		self.name = name
		self.isrc = isrc
		self.spotifyId = spotifyId
		self.appleMusicId = appleMusicId
	}
}
