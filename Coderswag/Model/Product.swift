//
//  Product.swift
//  Coderswag
//
//  Created by Abdurrahman on 1/17/18.
//  Copyright © 2018 AR Ehsan. All rights reserved.
//

import Foundation

struct Product {
	
	private(set) public var title: String
	private(set) public var price: String
	private(set) public var imageName: String
	
	init(title: String, price: String, imageName: String) {
		self.title = title
		self.price = price
		self.imageName = imageName
	}
}
