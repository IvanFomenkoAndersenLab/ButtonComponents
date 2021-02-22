//
//  DoubledButtonStyle.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 21.02.21.
//

import UIKit

struct DoubledButtonStyle {
	let buttons: DoubledButtonComponents
	
	init(buttons: DoubledButtonComponents) {
		self.buttons = buttons
	}
}

extension DoubledButtonStyle {
	public static var blueLeftDarkBlueRightButtons:
		DoubledButtonComponents {
		DoubledButtonComponents(leftButton: FullWidthButtonStyle(
									buttonViewStyle: ButtonViewStyle(backgroundColor: UIColor(hexString: "8FD4FF")
				)),
		rightButton: FullWidthButtonStyle())
	}
	
	public static var pinkLeftDarkBlueRightButtons:
		DoubledButtonComponents {
		DoubledButtonComponents(leftButton: FullWidthButtonStyle(
									buttonViewStyle: ButtonViewStyle(backgroundColor: UIColor(hexString: "EC008C")
									)),
								rightButton: FullWidthButtonStyle())
	}
}
