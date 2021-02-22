//
//  DoubledButtonTableViewCell.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 22.02.21.
//

import UIKit

class DoubledButtonTableViewCell: UITableViewCell {

	@IBOutlet weak var stackView: DoubledButton!
	
	func setupCell(doubleButtonParams: DoubleButtonParams) {
		stackView.apply(style: doubleButtonParams.doubleButtonType, leftButtonText: doubleButtonParams.leftButtonText, rightButtonText: doubleButtonParams.rightButtonText)
	}
	
	override func prepareForReuse() {
		for view in self.stackView.subviews {
			view.removeFromSuperview()
		}
	}
}
