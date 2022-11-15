//
//  LiquidKitTests.swift
//  LiquidKitTests
//
//  Created by YourtionGuo on 27/06/2017.
//

import XCTest
@testable import LiquidKit

#if os(Linux)
import SwiftGlibc
import Foundation
#endif

class LiquidKitTests: XCTestCase {
  func testLexer() {
    LexerTests().testCreateToken()
    LexerTests().testTokenize()
  }
    
  func testParser() {
    ParserTests().testParseText()
    ParserTests().testParseVariable()
  }

}

extension LiquidKitTests {
    static var allTests: [(String, (LiquidKitTests) -> () throws -> Void)] {
        return [
            ("testLexer", testLexer),
            ("testParser", testParser)
        ]
    }
}
