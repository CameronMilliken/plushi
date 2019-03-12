//
//  NonHighlightingButton.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class NonHighlightingButton: UIButton {
	override var isHighlighted: Bool {
		set {}
		get {
			return super.isHighlighted
		}
	}
}
