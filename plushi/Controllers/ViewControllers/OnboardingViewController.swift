//
//  OnboardingViewController.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
	
	// Mark: - Params
	let onboardingItems: [UICollectionViewCell] = [
		OnboardingCollectionViewCell(),
		OnboardingCollectionViewCell(),
		SignupCollectionViewCell()
	]
	let onboardingElements: [OnboardingElement] = [
		OnboardingElement(title: "Simplicity", description: "The easiest way to show everyone your music."),
		OnboardingElement(title: "Seriously the best.", description: "Sign up to keep everyone in the loop. We know you've got heat in your library.")
	]

	// Mark: - Outlets
	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var pageControl: UIPageControl!
	@IBOutlet weak var skipButton: UIButton!
	@IBOutlet weak var appTitle: UILabel!
	
	// Mark: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
		skipButton.layer.cornerRadius = 10
    }
	
	// Mark: - Actions
	@IBAction func skipButtonTapped(_ sender: Any) {
	}
	
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

extension OnboardingViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return onboardingItems.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		// Get onboarding item
		let item = onboardingItems[indexPath.row]
		let cell: UICollectionViewCell
		// Cast as the correct type of cell in onboarding array and do the set up for that cell
		switch item {
		case is OnboardingCollectionViewCell:
			cell = collectionView.dequeueReusableCell(withReuseIdentifier: "onboardingCell", for: indexPath)
			guard let cell = cell as? OnboardingCollectionViewCell else { print("Unable to cast cell correctly.") ; break }
			cell.onboardingElement = onboardingElements[indexPath.row]
		case is SignupCollectionViewCell:
			cell = collectionView.dequeueReusableCell(withReuseIdentifier: "signupCell", for: indexPath)
			guard let cell = cell as? SignupCollectionViewCell else { print("Unable to cast cell correctly.") ; break }
			cell.delegate = self
		default:
			print("Onboarding item was not of the right subclass.")
			return UICollectionViewCell()
		}
		return cell
	}
	
	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		
		let cellWidth = scrollView.frame.width
		let offset = scrollView.contentOffset.x
		pageControl.currentPage = Int(offset + cellWidth / 2) / Int(cellWidth)
		if offset > cellWidth + 20 {
			appTitle.isUserInteractionEnabled = false
			skipButton.isUserInteractionEnabled = false
			let alpha = 1 - (1 / (cellWidth / (offset - cellWidth)))
			appTitle.alpha = alpha
			skipButton.alpha = alpha
		} else if appTitle.alpha < 1, appTitle.isUserInteractionEnabled == false {
			appTitle.alpha = 1
			skipButton.alpha = 1
			appTitle.isUserInteractionEnabled = true
			skipButton.isUserInteractionEnabled = true
		}
		let offsetByPage = offset / cellWidth
		// First to second page transition
		if offsetByPage >= 0, offsetByPage < 1 {
			let blended = #colorLiteral(red: 0.9067477067, green: 0.8608484179, blue: 1, alpha: 1).blendWith(color: #colorLiteral(red: 0.6126757804, green: 0.9686274529, blue: 0.9226497304, alpha: 1), strength: offsetByPage)
			let accentBlended = #colorLiteral(red: 0.7883887887, green: 0.7393109202, blue: 1, alpha: 1).blendWith(color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), strength: offsetByPage)
			appTitle.textColor = accentBlended
			skipButton.backgroundColor = accentBlended
			skipButton.titleLabel?.textColor = blended
			collectionView.backgroundColor = blended
			self.view.backgroundColor = blended
		}
		// Second to third page transition
		if offsetByPage >= 1, offsetByPage < 2 {
			let blended = #colorLiteral(red: 0.6126757804, green: 0.9686274529, blue: 0.9226497304, alpha: 1).blendWith(color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), strength: offsetByPage - 1)
			collectionView.backgroundColor = blended
			self.view.backgroundColor = blended
		}
	}
}

extension OnboardingViewController: SignUpCollectionViewCellDelegate {
	
	func signupButtonTapped() {
		// TODO: - Signup functionality
	}
	func signUpWithGoogleButtonTapped() {
		// TODO: - Signup with google functionality
	}
}
