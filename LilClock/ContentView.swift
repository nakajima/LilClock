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

	@State private var isShowingSessionTime = true

	@Environment(\.openWindow) var openWindow

	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				TimelineView(.periodic(from: Date(), by: 1.0)) { context in
					Text(context.date, style: .time)
						.font(.extraLargeTitle2)
				}
				.hoverEffect()
				.onTapGesture {
					withAnimation {
						isShowingSessionTime.toggle()
					}
				}
				.onLongPressGesture {
					openWindow(id: "about")
				}

				if isShowingSessionTime {
					Spacer()

					VStack(alignment: .trailing) {
						Text("Current Session")
						TimelineView(.periodic(from: startedAt, by: 1.0)) { context in
							Text(startedAt, style: .relative)
						}
					}
					.font(.subheadline)
					.foregroundStyle(.secondary)
					.hoverEffect()
					.onTapGesture {
						withAnimation {
							isShowingSessionTime.toggle()
						}
					}
				}
			}
		}
		.padding()
	}
}
#Preview(windowStyle: .automatic) {
    ContentView()
}
