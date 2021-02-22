

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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupTableView()
	}
	
	private func setupTableView() {
		self.tableView.dataSource = self
		self.tableView.delegate = self
		self.tableView.register(UINib(nibName: "ButtonTableViewCell", bundle: nil), forCellReuseIdentifier: "ButtonTableViewCell")
	}
	
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return buttons.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = self.tableView.dequeueReusableCell(withIdentifier: "ButtonTableViewCell") as? ButtonTableViewCell {
			cell.setupCell(buttonParams: buttons[indexPath.row])
			return cell
		}
		
		return UITableViewCell()
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 95
	}
}

