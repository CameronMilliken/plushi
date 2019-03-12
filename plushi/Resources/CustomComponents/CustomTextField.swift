//
//  CustomTextField.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
	
	override func awakeFromNib() {
		super.awakeFromNib()
		self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "no default value", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
		self.borderStyle = .none
		self.layoutMargins = self.safeAreaInsets
	}
}
