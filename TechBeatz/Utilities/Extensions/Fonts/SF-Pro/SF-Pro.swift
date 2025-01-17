//
//  SF-Pro.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import Foundation
import SwiftUI


enum SFFontWeigth: String {
	case ultralight = "Ultralight"
	case light = "Light"
	case thin = "Thin"
	case regular = "Regular"
	case medium = "Medium"
	case semibold = "Semibold"
	case bold = "Bold"
	case heavy = "Heavy"
	case black = "Black"
}

private func getSF(size:CGFloat = 16, weigth:SFFontWeigth = .regular) -> Font {
	
	let fontname:String = "SF Pro " + weigth.rawValue
	
	let font = Font.custom(fontname, size: size)
	
	return font
	
}
extension Font {
	
	static func sf(_ size:CGFloat = 16,_ weigth:SFFontWeigth = .regular) -> Font {
		return getSF(size: size,weigth: weigth)
	}
	
	static var sf = getSF()
}
