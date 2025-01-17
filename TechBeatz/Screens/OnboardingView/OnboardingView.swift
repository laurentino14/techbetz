//
//  OnboardingView.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import SwiftUI


struct OnboardingView: View {
	private var Views:[AnyView] = [
		AnyView(OnboardingFirstView()),
		AnyView(OnboardingSecondView()),
		AnyView(OnboardingThirdView()),
		AnyView(OnboardingFourthView())
	]
	@EnvironmentObject private var applicationContext: ApplicationContext
	@State private var selectedTab: Int = 0
	
	var body: some View {
		NavigationView {
			ZStack{
				Color.basePrimary.ignoresSafeArea(.all)
				TabView(selection: $selectedTab) {
					ForEach(0..<Views.count, id:\.self){ index in
						Views[index].tag(index)
					}
					
					
				}.overlay{
					VStack{
						Spacer()
						HStack {
							
							ForEach(0..<Views.count, id: \.self) { index in
								Circle()
									.frame(width: 12, height: 12)
									.foregroundStyle(
										selectedTab == index
										? Color.systemBlue
										: Color.systemWhite.opacity(50))
								
							}
							Spacer()
							NavigationLink {
								Text("123")
//									.navigationTitle("123")
//									.toolbarTitleMenu(content: Text("123"))
							} label: {
								HStack(alignment: .center, spacing: 6) {
									
									Text("Get started")
										.font(.sf(12, .bold))
										.foregroundStyle(Color.systemWhite)
									Image(systemName: "arrow.right")
										.foregroundStyle(Color.systemWhite)
								}
								.frame(width: 124, height: 46)
								.background {
									RoundedRectangle(cornerRadius: 8)
										.foregroundStyle(Color.systemBlue)
								}
							}
						}
					}.safeAreaPadding()
				}.tabViewStyle(.page(indexDisplayMode: .never))
			}
		}
		
		

	}
}
