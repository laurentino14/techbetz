//
//  OnboardingViewModel.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 17/01/25.
//

import Foundation
import SwiftUI

@Observable final class OnboardingViewModel {
	var selectedTab: Int = 0
	
	let Views:[AnyView] = [
		AnyView(OnboardingFirstView()),
		AnyView(OnboardingSecondView()),
		AnyView(OnboardingThirdView()),
		AnyView(OnboardingFourthView())
	]
}
