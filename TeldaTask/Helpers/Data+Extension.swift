//
//  Data+Extension.swift
//  Helpers
//
//  Created by Sharaf on 6/21/24.
//

import Foundation

extension Data {
    
    var prettyString: NSString? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: .prettyPrinted),
              let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) else { return nil }
        return string
    }
}
