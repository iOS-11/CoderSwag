//
//  CategoriesViewController.swift
//  Coderswag
//
//  Created by Abdurrahman on 12/24/17.
//  Copyright © 2017 AR Ehsan. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureNavBar()
		
		tableView.delegate = self
		tableView.dataSource = self
		
		self.tableView.contentInset = UIEdgeInsetsMake(25, 0, 0, 0)
	}
	
	func configureNavBar() {
		let image = UIImage(named: "CODERSWAG")
		let imageView = UIImageView(image: image)
		navigationItem.titleView = imageView
		
		navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
		navigationController?.navigationBar.shadowImage = UIImage()
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return DataService.instance.getCategories().count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
			let category = DataService.instance.getCategories()[indexPath.row]
			cell.updateViews(category: category)
			return cell
		}
		
		return CategoryCell()
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let category = DataService.instance.getCategories()[indexPath.row]
		performSegue(withIdentifier: "showProductVC", sender: category)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let productsVC = segue.destination as? ProductsViewController {
			assert(sender as? Category != nil)
			productsVC.initProducts(category: sender as! Category)
		}
	}
	
}

