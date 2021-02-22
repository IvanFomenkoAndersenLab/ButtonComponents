//
//  DoubledButton.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 22.02.21.
//

import UIKit

class DoubledButton: UIStackView {
	private var roundingParams: RoundingParams?
	
	override init(frame: CGRect)  {
		super.init(frame: frame)
	}
	
	required init(coder: NSCoder) {
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
	
	func apply(style: DoubledButtonStyle, leftButtonText: String, rightButtonText: String) {
		
		let firstButton = FullWidthButton()
		firstButton.apply(style: style.buttons.leftButton, titleText: leftButtonText, imageName: nil)
		firstButton.addTarget(self, action: #selector(firstButtonClicked(_:)), for: .touchUpInside)
		
		let secondButton = FullWidthButton()
		secondButton.apply(style: style.buttons.rightButton, titleText: rightButtonText, imageName: nil)
		secondButton.addTarget(self, action: #selector(secondButtonClicked(_:)), for: .touchUpInside)
		
		self.roundingParams = style.roundingParams
		
		self.alignment = .fill
		self.distribution = .fillEqually
		self.spacing = 0
		
		self.addArrangedSubview(firstButton)
		self.addArrangedSubview(secondButton)
	}
	
	@objc func firstButtonClicked(_ sender: UIButton) {
		print("firstButtonClicked")
	}
	
	@objc func secondButtonClicked(_ sender: UIButton) {
		print("secondButtonClicked")
	}
}
