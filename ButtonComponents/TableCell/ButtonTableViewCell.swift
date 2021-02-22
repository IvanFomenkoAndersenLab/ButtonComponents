//
//  ButtonTableViewCell.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 19.02.21.
//

import UIKit

class ButtonTableViewCell: UITableViewCell {

	@IBOutlet weak var fullWidthButton: FullWidthButton!
	
	func setupCell(buttonParams: ButtonParams) {
		fullWidthButton.apply(style: buttonParams.buttonType, titleText: buttonParams.title, imageName: buttonParams.imageName)
	}
    
}
