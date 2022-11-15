//
//  NSRegularExpression+Extensions.swift
//  LiquidKit
//
//  Created by Bruno Philipe on 7/10/18.
//

import Foundation

extension NSRegularExpression {
    // swiftlint:disable:next force_try
	static var rangeRegex = try! NSRegularExpression(pattern: "\\(([^\\.\\n]+)\\.\\.([^\\.\\n]+)\\)", options: [])

	static func tagParameterRegex(for name: String) -> NSRegularExpression {
        // swiftlint:disable:next force_try
        return try! NSRegularExpression(pattern: "\(name)(\\s*?:\\s*?(\\w+))?", options: [])
	}
}
