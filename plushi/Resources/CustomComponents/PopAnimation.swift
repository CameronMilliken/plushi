//
//  PopAnimation.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

extension UIView {
	func animatePop() {
		self.bounds = CGRect(origin: CGPoint.zero, size: CGSize(width: 0, height: 0))
		UIView.animate(withDuration: 0.3) {
			self.bounds = CGRect(origin: CGPoint.zero, size: CGSize(width: 20, height: 20))
			self.layer.cornerRadius = self.bounds.width / 2
		}
	}
	func animateShrink() {
		UIView.animate(withDuration: 0.3) {
			self.bounds = CGRect(origin: CGPoint.zero, size: CGSize(width: 0, height: 0))
			self.layer.cornerRadius = self.bounds.width / 2
		}
	}
}
