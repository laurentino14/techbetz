//
//  OnboardingTab1.swift
//  TechBeatz
//
//  Created by Lucas Laurentino on 16/01/25.
//

import SwiftUI

struct OnboardingSecondView: View {

	var body: some View {
		VStack(spacing: 25) {
			Image("onboarding2")
				.resizable()
				.scaledToFit()
				.padding(.top, 50)

			HStack {

				VStack(alignment: .leading, spacing: 14) {
					Text("Turn your small savings into something big")
						.font(
							.sf(28, .bold)
						)
						.foregroundStyle(Color.systemWhite)

					Text(
						"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio."
					)
					.font(
						.sf(16, .regular)
					)
					.foregroundStyle(Color.systemWhite)
				}.frame(maxWidth: 322)

				Spacer()
			}
			Spacer()
		}

	}
}
