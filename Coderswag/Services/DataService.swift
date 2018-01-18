//
//  DataService.swift
//  Coderswag
//
//  Created by Abdurrahman on 1/17/18.
//  Copyright © 2018 AR Ehsan. All rights reserved.
//

import Foundation

class DataService {
	static let instance = DataService()
	
	private let categories = [
		Category(title: "SHIRTS", imageName: "shirtsView.png"),
		Category(title: "HOODIES", imageName: "hoodiesView.png"),
		Category(title: "HATS", imageName: "hatsView.png"),
		Category(title: "DIGITAL", imageName: "digitalView.png")
	]
	
	private let hats = [
		Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
		Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
		Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
		Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
	]
	
	private let hoodies = [
		Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
		Product(title: "Devslopes Logo Hoodie Red", price: "$35", imageName: "hoodie02.png"),
		Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
		Product(title: "Devslopes Hoodie Black", price: "$30", imageName: "hoodie04.png")
	]
	
	private let shirts = [
		Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
		Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
		Product(title: "Devslopes Logo Shirt Red", price: "$15", imageName: "shirt03.png"),
		Product(title: "Hustle Delegate Grey", price: "$12", imageName: "shirt04.png"),
		Product(title: "Kickflip Studios Black", price: "$20", imageName: "shirt05.png"),
	]
	
	private let digitalGoods = [Product]()
	
	func getCategories() -> [Category] {
		return categories
	}
	
	func getProducts(forCategoryTitle title: String) -> [Product] {
		switch title {
		case "SHIRTS":
			return getShirts()
		case "HATS":
			return getHats()
		case "HOODIES":
			return getHoodies()
		case "DIGITAL":
			return getDigitalGoods()
		default:
			return getShirts()
		}
	}
	
	func getHats() -> [Product] {
		return hats
	}
	
	func getShirts() -> [Product] {
		return shirts
	}
	
	func getHoodies() -> [Product] {
		return hoodies
	}
	
	func getDigitalGoods() -> [Product] {
		return digitalGoods
	}
}
