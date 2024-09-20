//
//  Created by happyo on 2024/06/21.
//

import Foundation

public protocol EventLogger {
    func logEvent(name: String, params: [String: Any]?)
}
