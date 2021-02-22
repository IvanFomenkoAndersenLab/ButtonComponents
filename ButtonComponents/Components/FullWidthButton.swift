//
//  CustomButton.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 21.02.21.
//

import UIKit

class FullWidthButton: UIButton {

	private var roundingParams: RoundingParams?
	
	override init(frame: CGRect)  {
		super.init(frame: frame)
	}
	
	required init?(coder: NSCoder)  {
		super.init(coder: coder)
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		guard let currentRoundingParams = roundingParams else { return }
		switch currentRoundingParams.roundingPart {
			case .top:
				roundCorners(corners: [.topLeft, .topRight], radius: currentRoundingParams.cornerRadius)
			case .bottom:
				roundCorners(corners: [.bottomLeft, .bottomRight], radius: currentRoundingParams.cornerRadius)
			}
	}

	func apply(style: FullWidthButtonStyle, titleText: String, imageName: String?) {
		self.setTitle(titleText, for: .normal)
		self.setTitleColor(style.buttonLabelStyle.textColor, for: .normal)
		self.titleLabel?.font = style.buttonLabelStyle.font
		
		self.backgroundColor = style.buttonViewStyle.backgroundColor
		
		self.roundingParams = style.buttonViewStyle.roundingParams
		
		guard let currentButtonImageStyle = style.buttonImageStyle else { return }
		self.setImage(UIImage(named: imageName ?? "testImage"), for: .normal)
		self.tintColor = style.buttonLabelStyle.textColor
		switch currentButtonImageStyle.imageLocation {
			case .left:
				self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
			case .right:
				self.semanticContentAttribute = .forceRightToLeft
				self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
		}
	}
}
