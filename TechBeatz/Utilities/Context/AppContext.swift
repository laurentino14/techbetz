//
//  AppContext.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import Foundation

enum ContextEnum {
	case Onboarding
}

final class ApplicationContext: ObservableObject {
	@Published var presentContext:ContextEnum = .Onboarding
}
