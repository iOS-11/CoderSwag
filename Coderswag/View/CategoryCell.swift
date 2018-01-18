//
//  CategoryCell.swift
//  Coderswag
//
//  Created by Abdurrahman on 1/16/18.
//  Copyright © 2018 AR Ehsan. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

	@IBOutlet weak var categoryImage: UIImageView!
	@IBOutlet weak var categoryTitle: UILabel!
	
	func updateViews(category: Category) {
		categoryImage.image = UIImage(named: category.imageName)
		categoryTitle.text = category.title
		categoryTitle.addCharacterSpacing()
	}

}


extension UILabel {
	func addCharacterSpacing() {
		if let labelText = text, labelText.count > 0 {
			let attributedString = NSMutableAttributedString(string: labelText)
			attributedString.addAttribute(NSAttributedStringKey.kern, value: 3, range: NSRange(location: 0, length: attributedString.length - 1))
			attributedText = attributedString
		}
	}
}
