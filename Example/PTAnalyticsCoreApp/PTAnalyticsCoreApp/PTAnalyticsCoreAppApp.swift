//
//  PTAnalyticsCoreAppApp.swift
//  PTAnalyticsCoreApp
//
//  Created by happyo on 2024/6/5.
//

import SwiftUI
import AnalyticsCore

@main
struct PTAnalyticsCoreAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    LogEventManager.shared.configure(logger: TestEventLogger())
                    PTEventLogger.logTest(prefix: "123")
//                    LogEventManager.shared.logEvent(name: "123")
                }
        }
    }
}

class TestEventLogger: EventLogger {
    func logEvent(name: String, params: [String : Any]?) {
        print(name)
    }
}

@MainActor
class PTEventLogger {
    public static func logTest(prefix: String) {
        LogEventManager.shared.logEvent(name: prefix)
    }
}
