//
//  DoubledButtonStyle.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 21.02.21.
//

import UIKit

struct DoubledButtonStyle {
	let buttons: DoubledButtonComponents
	let roundingParams: RoundingParams
	
	init(buttons: DoubledButtonComponents, roundingParams: RoundingParams = RoundingParams(roundingPart: .bottom)) {
		self.buttons = buttons
		self.roundingParams = roundingParams
	}
}

extension DoubledButtonStyle {
	public static var blueLeftDarkBlueRightButtons:
		DoubledButtonStyle {
		DoubledButtonStyle(buttons:
							DoubledButtonComponents(
								leftButton: FullWidthButtonStyle(
									buttonViewStyle: ButtonViewStyle(backgroundColor: UIColor(hexString: "8FD4FF")
									)),
								rightButton: FullWidthButtonStyle()
							))
	}
	
	public static var pinkLeftDarkBlueRightButtons:
		DoubledButtonStyle {
		DoubledButtonStyle(buttons:
							DoubledButtonComponents(
								leftButton: FullWidthButtonStyle(
									buttonViewStyle: ButtonViewStyle(backgroundColor: UIColor(hexString: "EC008C")
									)),
								rightButton: FullWidthButtonStyle()
							))
	}
}
