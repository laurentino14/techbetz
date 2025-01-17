//
//  AppContext.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import Foundation
import SwiftUI

enum ContextEnum {
	case Onboarding
	case Sign
	case Welcome
}

enum OnboardingEnum:Codable {
	case True
	case False
}

@Observable final class ApplicationContext {
	@AppStorage("onboarding") @ObservationIgnored private var onboardingData:Data?
	
	var presentContext:ContextEnum = .Onboarding
	var screen:ContextEnum = .Onboarding
	var oldContext:ContextEnum? = nil
	
	func goTO(_ context:ContextEnum){
		oldContext = presentContext
	
		presentContext = context
		withAnimation(.interactiveSpring(duration: 0.7)){
			screen = context
		}
	}
	
	
	func turnOnboardingOff(){
		
			do {
				let data = try JSONEncoder().encode(OnboardingEnum.False)
				onboardingData = data
				goTO(.Welcome)
			}catch {
				
			}
		
	}
	
	func retrieveOnboardingValue(){
		guard let onboardingData = onboardingData else {
			return
		}
		
		do{
			let data = try JSONDecoder()
				.decode(OnboardingEnum.self, from: onboardingData)
			

			if data == .False {
				presentContext = .Welcome
				return screen = .Welcome
			}else{
				presentContext = .Onboarding
				return screen = .Onboarding
			}
		}catch {
			
		}
	}
	
	func clearDefaults() {
		
			do {
				onboardingData = try JSONEncoder().encode(OnboardingEnum.True)
				
			} catch {
				print("deu ruim")
			}
		
	}
	
	
	
}
