//
//  Landmark2App.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Gospodi on 31.12.2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

@main
struct Landmark2App: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
