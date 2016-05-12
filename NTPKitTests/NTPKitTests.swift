//
//  NTPKitTests.swift
//  NTPKitTests
//
//  Created by Nico Cvitak on 2016-04-04.
//  Copyright © 2016 Nicholas Cvitak. All rights reserved.
//

import XCTest
import NTPKit

class NTPKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDate() {
        let server = NTPServer.defaultServer()
        do {
            try server.date()
        } catch {
            XCTFail("\(error)")
        }
    }
    
    
    
}
