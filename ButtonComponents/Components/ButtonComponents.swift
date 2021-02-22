//
//  ButtonComponents.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 18.02.21.
//

import UIKit

enum RoundingPart {
	case top
	case bottom
}

enum ButtonImageLocation {
	case left
	case right
}

struct RoundingParams {
	let roundingPart: RoundingPart
	let cornerRadius: CGFloat
	
	init(roundingPart: RoundingPart, cornerRadius: CGFloat = 12) {
		self.roundingPart = roundingPart
		self.cornerRadius = cornerRadius
	}
}

struct ButtonViewStyle {
	let backgroundColor: UIColor
	let roundingParams: RoundingParams?
	
	init(backgroundColor: UIColor = UIColor(hexString: "#0099FF"),
		 roundingParams: RoundingParams? = nil) {
		self.backgroundColor = backgroundColor
		self.roundingParams = roundingParams
	}
}

struct ButtonImageStyle {
	let imageLocation: ButtonImageLocation
	
	init(imageLocation: ButtonImageLocation) {
		self.imageLocation = imageLocation
	}
}

struct LabelStyle {
	let textColor: UIColor
	let font: UIFont
	
	init(textColor: UIColor = UIColor.white,
		 font: UIFont = UIFont.myriadGeoMtavruli(type: .bold, size: 14)) {
		self.textColor = textColor
		self.font = font
	}
}
