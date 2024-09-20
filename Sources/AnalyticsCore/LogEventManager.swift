//
//  LogEventManager.swift
//
//
//  Created by belyenochi on 2024/2/18.
//

import Foundation

public actor LogEventManager {
    public static let shared = LogEventManager()

    private var eventLogger: EventLogger?

    private init() {}

    public func configure(logger: EventLogger) {
        self.eventLogger = logger
    }

    public func logEvent(name: String, params: [String: Any]? = nil) {
        eventLogger?.logEvent(name: name, params: params)
    }
}
