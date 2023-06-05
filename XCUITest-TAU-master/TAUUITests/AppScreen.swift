//
//  AppScreen.swift
//  AppScreen
//
//  Created by Saima on 06/04/2023.
//

import Foundation
import XCTest

struct AppScreenButtons{
    let welcomeText = XCUIApplication().staticTexts["welcomeMessage"]
    let enterCityLabel = XCUIApplication().staticTexts["enterCity"]
    let errorMessage = XCUIApplication().staticTexts["Please Enter City"]
    let enrollButton = XCUIApplication().buttons["Enroll"]
    let sucessMessage = XCUIApplication().staticTexts["Thanks for Joining!"]
    let message = "Application is not working"
    let inputField = XCUIApplication().textFields["city"]
}

class AppScreenFunctions
{
    let appScreen = AppScreenButtons()
    let app = XCUIApplication()
    
    func verifyAppIsOpened()
    {
        XCTAssertTrue(app.staticTexts["welcomeMessage"].exists, "Failed")
    }
    
    func enrollButtonExits()
    {
        XCTAssertTrue(appScreen.enrollButton.exists, appScreen.message)
    }
    
    func enterCity(){
        appScreen.enterCityLabel.tap()
    }
    
    func welcomeTextTap(){
        appScreen.welcomeText.doubleTap()
    }
    
    func inputTextInField()
    {
        appScreen.inputField.tap()
    }
    
    func writeInInputTextInField(city: String)
    {
        appScreen.inputField.typeText(city)
    }
    
    func clickOnEnrollButton()
    {
        appScreen.enrollButton.tap()
    }
    
    
}
