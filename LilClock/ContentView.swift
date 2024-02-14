//
//  ContentView.swift
//  LilClock
//
//  Created by Pat Nakajima on 2/13/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
	var startedAt = Date()

	@State private var showImmersiveSpace = false
	@State private var immersiveSpaceIsShown = false

	@Environment(\.openImmersiveSpace) var openImmersiveSpace
	@Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				TimelineView(.periodic(from: Date(), by: 1.0)) { context in
					Text(context.date, style: .time)
						.font(.extraLargeTitle2)
				}

				Spacer()

				VStack(alignment: .trailing) {
					Text("Current Session")
					TimelineView(.periodic(from: startedAt, by: 1.0)) { context in
						Text(startedAt, style: .relative)
					}
				}
				.font(.subheadline)
				.foregroundStyle(.secondary)
			}
		}
		.padding()
	}
}
#Preview(windowStyle: .automatic) {
    ContentView()
}
