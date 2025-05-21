//
//  LogEventManager.swift
//
//
//  Created by belyenochi on 2024/2/18.
//

import Foundation
import StoreKit

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

    @MainActor
    public func logTransaction(_ transaction: Transaction) {
        eventLogger?.logTransaction(transaction)
    }

    @MainActor
    public func logBDA(name: String, params: [String: Any]? = nil) {
        eventLogger?.logBDA(name: name, params: params)
    }

    @MainActor
    public func logRegister(params: [String: Any]? = nil) {
        eventLogger?.logRegister(params: params)
    }

    @MainActor
    public func logPaySuccess(params: [String: Any]? = nil) {
        eventLogger?.logPaySuccess(params: params)
    }
}
