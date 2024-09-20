//
//  LogEventManager.swift
//
//
//  Created by belyenochi on 2024/2/18.
//

import Foundation

public actor LogEventManager {
    public static let shared = LogEventManager()
    
    @MainActor
    private var eventLogger: EventLogger?

    private init() {}

    @MainActor
    public func configure(logger: EventLogger) {
        self.eventLogger = logger
    }

    @MainActor
    public func logEvent(name: String, params: [String: Any]? = nil) {
        eventLogger?.logEvent(name: name, params: params)
    }
}
