//
//  OnboardingView.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import SwiftUI


struct OnboardingTabView: View {
	
	
	@Environment(ApplicationContext.self) private var applicationContext: ApplicationContext
	@State private var viewModel: OnboardingViewModel = OnboardingViewModel()

	
	var body: some View {
		NavigationStack {
			ZStack{
				
				VStack{
					
					TabView(selection: $viewModel.selectedTab) {
						ForEach(0..<viewModel.Views.count, id:\.self){ index in
							viewModel.Views[index].tag(index)
						}
				}
					
					
				}.frame(maxWidth: .infinity, maxHeight: .infinity).overlay{
					VStack{
						Spacer()
						HStack {
							
							ForEach(0..<viewModel.Views.count, id: \.self) { index in
								Circle()
									.frame(width: 12, height: 12)
									.foregroundStyle(
										viewModel.selectedTab == index
										? Color.sBlue
										: Color.systemWhite.opacity(50))
								
							}
							Spacer()
							Button {
								
								
									applicationContext.turnOnboardingOff()
								
								

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
										.foregroundStyle(Color.sBlue)
								}
							}
						}
					}.safeAreaPadding()
				}.tabViewStyle(
					.page(indexDisplayMode: .never)
				)
			}.background {
				Color.basePrimary.ignoresSafeArea(.all)
			}
		}
	}
}
