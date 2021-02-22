//
//  ButtonStyle.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 18.02.21.
//

import UIKit

struct FullWidthButtonStyle {
	let buttonViewStyle: ButtonViewStyle
	let buttonImageStyle: ButtonImageStyle?
	let buttonLabelStyle: LabelStyle
	
	init(buttonViewStyle: ButtonViewStyle = ButtonViewStyle(),
		 buttonImageStyle: ButtonImageStyle? = nil,
		 buttonLabelStyle: LabelStyle = LabelStyle()) {
		self.buttonViewStyle = buttonViewStyle
		self.buttonImageStyle = buttonImageStyle
		self.buttonLabelStyle = buttonLabelStyle
	}
}

extension FullWidthButtonStyle {
	public static var bottomRoundedButtonWithoutImage: FullWidthButtonStyle {
		FullWidthButtonStyle(
			buttonViewStyle: ButtonViewStyle(
				roundingParams: RoundingParams(roundingPart: .bottom)
			)
		)
	}
	
	public static var topRoundedButtonWithoutImage: FullWidthButtonStyle {
		FullWidthButtonStyle(
			buttonViewStyle: ButtonViewStyle(
				roundingParams: RoundingParams(roundingPart: .top)
			)
		)
	}
	
	public static var bottomRoundedButtonWithLeftImage: FullWidthButtonStyle {
		FullWidthButtonStyle(
			buttonViewStyle: ButtonViewStyle(
				roundingParams: RoundingParams(roundingPart: .bottom)
			),
			buttonImageStyle: ButtonImageStyle(
				imageLocation: .left
			)
		)
	}
	
	public static var topRoundedButtonWithLeftImage: FullWidthButtonStyle {
		FullWidthButtonStyle(
			buttonViewStyle: ButtonViewStyle(
				roundingParams: RoundingParams(roundingPart: .top)
			),
			buttonImageStyle: ButtonImageStyle(
				imageLocation: .left
			)
		)
	}
	
	public static var bottomRoundedButtonWithRightImage: FullWidthButtonStyle {
		FullWidthButtonStyle(
			buttonViewStyle: ButtonViewStyle(
				roundingParams: RoundingParams(roundingPart: .bottom)
			),
			buttonImageStyle: ButtonImageStyle(
				imageLocation: .right
			)
		)
	}
	
	public static var topRoundedButtonWithRightImage: FullWidthButtonStyle {
		FullWidthButtonStyle(
			buttonViewStyle: ButtonViewStyle(
				roundingParams: RoundingParams(roundingPart: .top)
			),
			buttonImageStyle: ButtonImageStyle(
				imageLocation: .right
			)
		)
	}
}
  
