//
//  LogEventManager.swift
//
//
//  Created by belyenochi on 2024/2/18.
//

import Foundation
import FirebaseAnalytics

public class LogEventManager {
    public static func logEvent(name: String, params: [String: Any]? = nil) {
        #if os(iOS)
        Analytics.logEvent(name, parameters: params)
        #endif
    }
    
}
