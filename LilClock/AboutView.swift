//
//  AboutView.swift
//  LilClock
//
//  Created by Pat Nakajima on 2/13/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
			VStack(alignment: .leading) {
				Text("Check out the source here: [https://github.com/nakajima/LilClock](https://github.com/nakajima/LilClock)")
					.listRowBackground(Color.clear)
					.padding(.top)
			}
    }
}

#Preview {
    AboutView()
}
