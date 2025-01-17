//
//  WelcomeView.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 17/01/25.
//

import SwiftUI

struct WelcomeView: View {
	@Environment(
		ApplicationContext.self
	) private var applicationContext:ApplicationContext
	var body: some View {
		NavigationStack{
			ZStack{
				
				VStack{
					
					Text("Go to onboard").onTapGesture {
						applicationContext.goTO(.Onboarding)
					}
					Text("Go to sign").onTapGesture {
						applicationContext.goTO(.Sign)
					}
//					NavigationLink{
//						
//						ZStack {
//							Color.blue.ignoresSafeArea(.all)
//							VStack {
//								
//								
//								
//								Button {
//									applicationContext.clearDefaults()
//								} label: {
//									Text("clear").foregroundStyle(.white)
//								}
//							}
//						
//						
//					}.navigationTitle("abcd").transition(
//						.move(edge: .trailing)
//					)
//	
//					} label:{
//						Text("Go to Sign")
//					}
				}.frame(maxWidth: .infinity, maxHeight: .infinity).background {
					Color.basePrimary.ignoresSafeArea(.all)
				}
			}
		}
    }
}
