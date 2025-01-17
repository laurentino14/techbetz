//
//  TechBeatzApp.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import SwiftUI

@main
struct TechBeatzApp: App {

	@State private var applicationContext: ApplicationContext =
		ApplicationContext()

	init() {

	}
	
	
	
	var body: some Scene {
		WindowGroup {
			ZStack {
				

				switch applicationContext.screen {
				
					

				case .Onboarding:
					OnboardingTabView()
							.transition(
								.move(edge: .bottom)
							)

				case .Welcome:
						WelcomeView()
							.transition(
								
									.welcomeTransition(
										applicationContext.oldContext,
										applicationContext.presentContext
									)
							)
							
							
//							applicationContext.oldContext == .Onboarding && applicationContext.presentContext == .Welcome
//							? .move(
//								edge: .bottom
//							) : applicationContext.oldContext == .Welcome && applicationContext.presentContext == .Onboarding ? .move(
//								edge: .bottom
//							) :
//								.move(edge: .leading)

				case .Sign:
					NavigationStack {

						ZStack {
							
							VStack {

								Text("back")

									.foregroundStyle(.white)
									.onTapGesture {

										applicationContext
											.goTO(.Welcome)

									}

								Button {
									applicationContext.clearDefaults()
								} label: {
									Text("clear").foregroundStyle(.white)
								}
							}
						}.navigationTitle("abcd").background{
							Color.blue.ignoresSafeArea(.all)
						}

					}.transition(
						.move(edge: .trailing)
					)

				}
			}
			.background {
				Color.basePrimary.ignoresSafeArea(.all)
			}
			.foregroundStyle(Color.white)
			.onAppear {
				applicationContext.retrieveOnboardingValue()
			}
			.font(.sf)
			.ignoresSafeArea()
		}.environment(applicationContext)
	}
}
