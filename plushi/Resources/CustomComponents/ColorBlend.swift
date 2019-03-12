//
//  ColorBlend.swift
//  plushi
//
//  Created by Ethan John on 3/11/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import UIKit

extension UIColor {
	
	/** Blends color with another color at a given strength.
	- parameter color: The color to blend with.
	- parameter strength: Should be within 0.0 & 1.0. Defines the strength of the color you are blending.
	*/
	func blendWith(color: UIColor, strength: CGFloat) -> UIColor {
		
		var (r1, g1, b1, a1) = (CGFloat(0), CGFloat(0), CGFloat(0), CGFloat(0))
		var (r2, g2, b2, a2) = (CGFloat(0), CGFloat(0), CGFloat(0), CGFloat(0))
		
		self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
		color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)
		
		// Difference in colors.
		let (rDelta, gDelta, bDelta, aDelta) = (r1 - r2, g1 - g2, b1 - b2, a1 - a2)
		// Multiplied by strength.
		let (rS, gS, bS, aS) = (rDelta * strength, gDelta * strength, bDelta * strength, aDelta * strength)
		// Difference applied to color.
		return UIColor(red: r1 - rS, green: g1 - gS, blue: b1 - bS, alpha: a1 - aS)
	}
}
