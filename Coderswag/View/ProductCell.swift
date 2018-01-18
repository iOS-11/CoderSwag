//
//  ProductCell.swift
//  Coderswag
//
//  Created by Abdurrahman on 1/17/18.
//  Copyright © 2018 AR Ehsan. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
	
	@IBOutlet weak var productImage: UIImageView!
	@IBOutlet weak var productTitle: UILabel!
	@IBOutlet weak var productPrice: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		self.layer.cornerRadius = 5
	}
	
	func updateViews(product: Product) {
		productImage.image = UIImage(named: product.imageName)
		productTitle.text = product.title
		productPrice.text = product.price
	}
}
