//
//  ProductsViewController.swift
//  Coderswag
//
//  Created by Abdurrahman on 1/17/18.
//  Copyright © 2018 AR Ehsan. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var bgLabel: UILabel!
	
	private(set) public var products = [Product]()
	
	var txt = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()
		configureNavBar()
		bgLabel.text = txt
		
		collectionView.delegate = self
		collectionView.dataSource = self
		
		self.collectionView.contentInset = UIEdgeInsetsMake(140, 0, 0, 0)
	}
	
	func configureNavBar() {
		let backImage = UIImage(named: "back")
		self.navigationController?.navigationBar.backIndicatorImage = backImage
		self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
	}

	func initProducts(category: Category) {
		products = DataService.instance.getProducts(forCategoryTitle: category.title)
		title = category.title
		txt = category.title
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return products.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
			cell.contentView.layer.cornerRadius = 10.0
			let product = products[indexPath.row]
			cell.updateViews(product: product)
			return cell
		}
		
		return ProductCell()
	}
	
}
