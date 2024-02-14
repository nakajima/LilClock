//
//  LilClockApp.swift
//  LilClock
//
//  Created by Pat Nakajima on 2/13/24.
//

import SwiftUI

@main
struct LilClockApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
