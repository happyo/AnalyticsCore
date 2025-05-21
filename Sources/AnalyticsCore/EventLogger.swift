//
//  Created by happyo on 2024/06/21.
//

import Foundation
import StoreKit

public protocol EventLogger {
    func logEvent(name: String, params: [String: Any]?)
    func logTransaction(_ transaction: Transaction)
    func logBDA(name: String, params: [String: Any]?)
    func logRegister(params: [String: Any]?)
    func logPaySuccess(params: [String: Any]?)
}
