

//
//  ViewController.swift
//  ButtonComponents
//
//  Created by Ivan Fomenko on 20.02.21.
//

import UIKit

struct ButtonParams {
	let buttonType: FullWidthButtonStyle
	let title: String
	let imageName: String?
	
	init(buttonType: FullWidthButtonStyle, title: String, imageName: String? = nil) {
		self.buttonType = buttonType
		self.title = title
		self.imageName = imageName
	}
}

struct DoubleButtonParams {
	let doubleButtonType: DoubledButtonStyle
	let leftButtonText: String
	let rightButtonText: String
	
	init(doubleButtonType: DoubledButtonStyle, leftButtonText: String = "Button", rightButtonText: String = "Button") {
		self.doubleButtonType = doubleButtonType
		self.leftButtonText = leftButtonText
		self.rightButtonText = rightButtonText
	}
}

class ViewController: UIViewController {
	
	@IBOutlet private weak var tableView: UITableView!
	
	private var buttons: [ButtonParams] = [
		ButtonParams(buttonType: .bottomRoundedButtonWithoutImage, title: "bottomRoundedButtonWithoutImage"),
		ButtonParams(buttonType: .topRoundedButtonWithoutImage, title: "topRoundedButtonWithoutImage"),
		ButtonParams(buttonType: .bottomRoundedButtonWithLeftImage, title: "bottomRoundedButtonWithLeftImage", imageName: "testImage"),
		ButtonParams(buttonType: .topRoundedButtonWithLeftImage, title: "topRoundedButtonWithLeftImage", imageName: "testImage"),
		ButtonParams(buttonType: .bottomRoundedButtonWithRightImage, title: "bottomRoundedButtonWithRightImage", imageName: "testImage"),
		ButtonParams(buttonType: .topRoundedButtonWithRightImage, title: "topRoundedButtonWithRightImage", imageName: "testImage")
	]
	
	private var doubleButtons: [DoubleButtonParams] = [
		DoubleButtonParams(doubleButtonType: .blueLeftDarkBlueRightButtons),
		DoubleButtonParams(doubleButtonType: .pinkLeftDarkBlueRightButtons)
	]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupTableView()
	}
	
	private func setupTableView() {
		self.tableView.dataSource = self
		self.tableView.delegate = self
		self.tableView.register(UINib(nibName: "ButtonTableViewCell", bundle: nil), forCellReuseIdentifier: "ButtonTableViewCell")
		self.tableView.register(UINib(nibName: "DoubledButtonTableViewCell", bundle: nil), forCellReuseIdentifier: "DoubledButtonTableViewCell")
	}
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return buttons.count + doubleButtons.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if indexPath.row < buttons.count {
			if let cell = self.tableView.dequeueReusableCell(withIdentifier: "ButtonTableViewCell") as? ButtonTableViewCell {
				cell.setupCell(buttonParams: buttons[indexPath.row])
				return cell
			}
			
			return UITableViewCell()
		} else {
			if let cell = self.tableView.dequeueReusableCell(withIdentifier: "DoubledButtonTableViewCell") as? DoubledButtonTableViewCell {
				cell.setupCell(doubleButtonParams: doubleButtons[indexPath.row - buttons.count])
				return cell
			}
			
			return UITableViewCell()
		}
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 95
	}
}

