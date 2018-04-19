//
//  String+.swift
//  SwiftyExtension
//
//  Created by Zhihui Tang on 2018-04-19.
//  Copyright © 2018 Zhihui Tang. All rights reserved.
//

import Foundation

public extension String {
    func localized(comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    var dateFromISO8601: Date? {
        return Formatter.iso8601.date(from: self)
    }
}
