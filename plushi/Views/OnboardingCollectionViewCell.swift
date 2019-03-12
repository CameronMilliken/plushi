//
//  OnboardingCollectionViewCell.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
	
	// Mark: - Params
	var onboardingElement: OnboardingElement? {
		didSet {
			updateViews()
		}
	}
	
	// Mark: - Outlets
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	
	func updateViews() {
		guard let element = onboardingElement else { return }
		titleLabel.text = element.title
		descriptionLabel.text = element.description
	}
}
