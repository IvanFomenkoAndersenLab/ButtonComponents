//
//  DoubledButtonTableViewCell.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 22.02.21.
//

import UIKit

class DoubledButtonTableViewCell: UITableViewCell {

	@IBOutlet weak var stackView: UIStackView!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
