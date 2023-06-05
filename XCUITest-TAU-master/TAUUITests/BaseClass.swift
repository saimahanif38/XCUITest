//
//  BaseClass.swift
//  TAUUITests
//
//  Created by Saima on 06/04/2023.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

final class BaseClass: XCTestCase {
    
    func testAppIsOpen(){
        let app = XCUIApplication()
        let tests = AppScreenFunctions()
        app.launch()
        tests.verifyAppIsOpened()
        tests.enrollButtonExits()
        tests.inputTextInField()
        tests.writeInInputTextInField(city: "Karachi")
        tests.welcomeTextTap()
        tests.clickOnEnrollButton()
    }
}
