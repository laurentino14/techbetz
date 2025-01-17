//
//  TechBeatzApp.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import SwiftUI

@main
struct TechBeatzApp: App {
	
	@StateObject private var applicationContext:ApplicationContext = ApplicationContext()
	
    var body: some Scene {
        WindowGroup {
					
			ZStack{
				switch applicationContext.presentContext {
					case .Onboarding:
						OnboardingView().environmentObject(applicationContext)
				}
			}.font(.sf).ignoresSafeArea()
        }
    }
}
