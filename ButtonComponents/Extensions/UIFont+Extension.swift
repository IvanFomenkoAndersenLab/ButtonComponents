//
//  UIFont+Extension.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 21.02.21.
//

import UIKit

public extension UIFont {
	
	enum MyriadGeoFontType : String {
		case medium = "Medium"
		case regular = "Regular"
		case bold = "Bold"
	}
	
	enum MyriadGeoMtavruliFontType : String {
		case medium = "Medium"
		case regular = "Regular"
		case bold = "Bold"
	}
	
	static func myriadGeoMtavruli(type: MyriadGeoMtavruliFontType = .medium, size: CGFloat = 14) -> UIFont {
		return UIFont(name: "MyriadGEOMtavruli-" + type.rawValue, size: size)!
	}
}
