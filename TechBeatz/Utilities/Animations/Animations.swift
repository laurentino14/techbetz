//
//  Animations.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 17/01/25.
//

import SwiftUI

//extension AnyTransition {
//	func welcomeTransition(_ old: ContextEnum?, _ present: ContextEnum)
//		-> any AnyTransition
//	{
//		switch (old, present) {
//		case (.Onboarding, .Welcome):
//			return .move(edge: .bottom)
//		case (.Welcome, .Onboarding):
//			return .move(edge: .bottom)
//		default:
//			return .move(edge: .leading)
//		}
//	}
//
//}

extension AnyTransition {
	static func welcomeTransition(_ old: ContextEnum?, _ present: ContextEnum) -> AnyTransition
	{
		switch (old, present) {
		case (.Onboarding, .Welcome):
				return .move(edge: .bottom)
		case (.Welcome, .Onboarding):
			return .move(edge: .bottom)
		default:
			return .move(edge: .leading)
		}
	}
}
