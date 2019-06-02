//
//  MainGuiManipulations.swift
//  MotiveUITests
//
//  Created by Siddharthan Selvasekar on 6/1/19.
//  Copyright © 2019 Amit Patankar. All rights reserved.
//

import XCTest

class MainGuiManipulations: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() {
//        // Use recording to get started writing UI tests.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }

    func test11RegisterAccount() {
        // This test addresses the following test cases: User registration
        
        let app = XCUIApplication()
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "HHddMMyyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        
        let registerButton = app.buttons["Register"]
        registerButton.tap()
        app.textFields["Username"].tap()
        app.textFields["Username"].typeText(myStringafd.lowercased())
        
        let emailAddressTextField = app.textFields["Email address"]
        emailAddressTextField.tap()
        emailAddressTextField.tap()
        emailAddressTextField.typeText(myStringafd.lowercased() + "@motiveapp.com")
        app.textFields["First name"].tap()
        app.textFields["First name"].typeText("Automation")
        app.textFields["Last name"].tap()
        app.textFields["Last name"].typeText("Bot")
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("password")
        
        let confirmPasswordSecureTextField = app.secureTextFields["Confirm password"]
        confirmPasswordSecureTextField.tap()
        confirmPasswordSecureTextField.tap()
        confirmPasswordSecureTextField.typeText("password")
        registerButton.tap()
        app.alerts["Registration succeeded"].buttons["Ok"].tap()
        
    }
    
    func test12RegisterPartnerAccount() {
        let app = XCUIApplication()
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "HHddMMyyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        
        let registerButton = app.buttons["Register"]
        registerButton.tap()
        app.textFields["Username"].tap()
        app.textFields["Username"].typeText("test" + myStringafd.lowercased())
        
        let emailAddressTextField = app.textFields["Email address"]
        emailAddressTextField.tap()
        emailAddressTextField.tap()
        emailAddressTextField.typeText("test" + myStringafd.lowercased() + "@motiveapp.com")
        app.textFields["First name"].tap()
        app.textFields["First name"].typeText("test" + myStringafd)
        app.textFields["Last name"].tap()
        app.textFields["Last name"].typeText("Bot")
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("password")
        
        let confirmPasswordSecureTextField = app.secureTextFields["Confirm password"]
        confirmPasswordSecureTextField.tap()
        confirmPasswordSecureTextField.tap()
        confirmPasswordSecureTextField.typeText("password")
        registerButton.tap()
        sleep(1)
        app.alerts["Registration succeeded"].buttons["Ok"].tap()
    }
    
    func test21PageNav() {
        // This script addresses the following test cases:
        // Log in
        // View home page
        // View challenges
        // View Search page
        // View create a challenge page
        // View notifications
        
        let app = XCUIApplication()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "HHddMMyyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!).lowercased()
        
        print(myStringafd)
        let field = app.textFields["Username or Email"]
        field.tap()
        field.typeText(myStringafd.lowercased())
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("password")
        app.buttons["Login"].tap()
        
        let toolbar = app.toolbars["Toolbar"]
        let element = toolbar.children(matching: .other).element.children(matching: .other).element
        element.children(matching: .button).element(boundBy: 1).tap()
        toolbar.buttons["New Challenge"].tap()
        app.buttons["Cancel"].tap()
        element.children(matching: .button).element(boundBy: 3).tap()
        element.children(matching: .button).element(boundBy: 4).tap()
        app.navigationBars["Notifications"].children(matching: .button).element.tap()
        app.navigationBars[myStringafd.lowercased()].buttons["Notifications"].tap()
        element.children(matching: .button).element(boundBy: 0).tap()
        
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test22SearchFriends() {
        
        let app = XCUIApplication()
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "HHddMMyyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        
        let toolbar = app.toolbars["Toolbar"]
        toolbar.buttons["Friends"].tap()
        app.tables["No search results found"].searchFields["Search by name or username"].tap()
        app.tables["No search results found"].searchFields["Search by name or username"].typeText("test" + myStringafd)
        sleep(3)
        app.tables.children(matching: .other).element(boundBy: 0).tap()
        //app.tables.staticTexts["test" + myStringafd + " Bot"].tap()
        app.buttons["Add Friend"].tap()
        app.alerts["Send Friend Request"].buttons["Confirm"].tap()
        app.navigationBars["Friend Requests"].buttons["test" + myStringafd].tap()
        app.navigationBars["test" + myStringafd].buttons["Search Users"].tap()
        toolbar.children(matching: .other).element.children(matching: .other).element.children(matching: .button).element(boundBy: 0).tap()
        
        
    }
    
    func test3ViewSettingsAndFriends() {
        //This script addresses the test cases:
        //View settings
        //View friend requests
        //View friends
        //View challenges
        
        let app = XCUIApplication()
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "HHddMMyyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        
        let button = app.navigationBars["Home"].children(matching: .button).element
        button.tap()
        
        let button2 = app.buttons["Friends"]
        button2.tap()
        
        let friendsNavigationBar = app.navigationBars["Friends"]
        let profileButton = friendsNavigationBar.buttons["Profile"]
        profileButton.tap()
        app.buttons["Challenges"].tap()
        app.alerts["Your challenges"].buttons["Ok"].tap()
        app.buttons["Profile Settings"].tap()
        app.navigationBars["Settings"].buttons["Profile"].tap()
        button2.tap()
        friendsNavigationBar.buttons["requests"].tap()
        app.navigationBars["Friend Requests"].buttons["Friends"].tap()
        profileButton.tap()
        
        let homeButton = app.navigationBars[myStringafd.lowercased()].buttons["Home"]
        homeButton.tap()
        button.tap()
        button2.tap()
        //app.tables/*@START_MENU_TOKEN@*/.staticTexts["Siddhartha Selvasekar"]/*[[".cells.staticTexts[\"Siddhartha Selvasekar\"]",".staticTexts[\"Siddhartha Selvasekar\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        //app.navigationBars["Sidselva"].buttons["Friends"].tap()
        profileButton.tap()
        homeButton.tap()
        
    }
    
    func test4CreateGraphCh() {
        //This script addresses the test cases:
        //        Create a graph challenge
        //        Question marks
        
        let app = XCUIApplication()
        let toolbar = app.toolbars["Toolbar"]
        toolbar.buttons["New Challenge"].tap()
        app.buttons["Create Graph Challenge"].tap()
        
        let challengeNameTextField = app.textFields["Challenge Name"]
        challengeNameTextField.tap()
        challengeNameTextField.typeText("Test Graph Challenge")
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element
        element.children(matching: .other).element(boundBy: 1).buttons["?"].tap()
        app.alerts["Challenge Name"].buttons["Ok"].tap()
        
        let enterAMetricToJudgeYourProgressTextField = app.textFields["Enter a metric to judge your progress"]
        enterAMetricToJudgeYourProgressTextField.tap()
        enterAMetricToJudgeYourProgressTextField.typeText("Test Metric")
        element.children(matching: .other).element(boundBy: 2).buttons["?"].tap()
        app.alerts["Metric"].buttons["Ok"].tap()
        
        let describeYourChallengeInMoreDetailTextField = app.textFields["Describe your challenge in more detail..."]
        describeYourChallengeInMoreDetailTextField.tap()
        describeYourChallengeInMoreDetailTextField.typeText("Test Description")
        element.children(matching: .other).element(boundBy: 3).buttons["?"].tap()
        app.alerts["Challenge Description"].buttons["Ok"].tap()
        element.children(matching: .other).element(boundBy: 4).buttons["?"].tap()
        app.alerts["Challenge Type"].buttons["Ok"].tap()
        
        let submitButton = app.buttons["Submit"]
        submitButton.tap()
        
        app.alerts["Challenge created"].buttons["Ok"].tap()
        
    }
    
    func test5GraphCh() {
        //This script addresses the test cases:
        //Add friends to challenge
        //Challenge settings
        //Chat message
        //Adding progress
        
        let app = XCUIApplication()
        let toolbar = app.toolbars["Toolbar"]
        toolbar.children(matching: .other).element.children(matching: .other).element.children(matching: .button).element(boundBy: 1).tap()
        app.tables.cells.containing(.staticText, identifier:"Test Graph Challenge").staticTexts["Automation"].tap()
        toolbar.buttons["Add Challenger"].tap()
        app.tables["You have no friends right now. Add some from the ‘Search Users’ page!"].buttons["Back"].tap()
        toolbar.buttons["Item"].tap()
        app.navigationBars["Challenge Details"].buttons["Back"].tap()
        
        let testGraphChallengeNavigationBar = app.navigationBars["Test Graph Challenge"]
        testGraphChallengeNavigationBar.buttons["speech bubble"].tap()
        app.textViews.containing(.staticText, identifier:"New Message").element.tap()
        app.textViews.containing(.staticText, identifier:"New Message").element.typeText("Test message")
        app.buttons["send"].tap()
        app.navigationBars["Chat"].buttons["Test Graph Challenge"].tap()
        toolbar.buttons["Add Progress"].tap()
        let progressUpdateAlert = app.alerts["Progress Update"]
        progressUpdateAlert.collectionViews.textFields["Test Metric"].tap()
        app.textFields["Test Metric"].typeText("2")
        progressUpdateAlert.buttons["Confirm"].tap()
        
        app.buttons["setting"].tap()
        
        testGraphChallengeNavigationBar.buttons["Back"].tap()
        testGraphChallengeNavigationBar.buttons["Challenges"].tap()
        
    }
    
    func test6CreateChkListCh() {
        //This script addresses the test cases:
        //Cancel creating a new challenge
        //Creating a checklist challenge
        
        let app = XCUIApplication()
        let toolbar = app.toolbars["Toolbar"]
        let newChallengeButton = toolbar.buttons["New Challenge"]
        newChallengeButton.tap()
        
        let cancelButton = app.buttons["Cancel"]
        cancelButton.tap()
        newChallengeButton.tap()
        
        let createChecklistChallengeButton = app.buttons["Create Checklist Challenge"]
        createChecklistChallengeButton.tap()
        cancelButton.tap()
        cancelButton.tap()
        newChallengeButton.tap()
        createChecklistChallengeButton.tap()
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element
        element.children(matching: .other).element(boundBy: 1).buttons["?"].tap()
        app.alerts["Challenge Name"].buttons["Ok"].tap()
        element.children(matching: .other).element(boundBy: 2).buttons["?"].tap()
        app.alerts["Challenge Description"].buttons["Ok"].tap()
        
        let submitButton = app.buttons["Submit"]
        submitButton.tap()
        app.alerts["Registration Failed"].buttons["Ok"].tap()
        app.textFields["Challenge Name"].tap()
        app.textFields["Challenge Name"].typeText("Music List")
        
        let challengeDescriptionTextField = app.textFields["Challenge Description"]
        challengeDescriptionTextField.tap()
        challengeDescriptionTextField.typeText("Share sweet tracks")
        submitButton.tap()
        app.alerts["Challenge created"].buttons["Ok"].tap()
        
        let element2 = toolbar.children(matching: .other).element.children(matching: .other).element
        element2.children(matching: .button).element(boundBy: 1).tap()
        element2.children(matching: .button).element(boundBy: 0).tap()
        
    }
    func test7ChkListCh() {
        //This script addresses the test cases:
        //Navigating a newly created checklist challenge
        //Edit challenge settings
        
        let app = XCUIApplication()
        let element = app.toolbars["Toolbar"].children(matching: .other).element.children(matching: .other).element
        element.children(matching: .button).element(boundBy: 1).tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Music List"]/*[[".cells.staticTexts[\"Music List\"]",".staticTexts[\"Music List\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let button = element.children(matching: .button).element(boundBy: 2)
        button.tap()
        
        let backButton = app.navigationBars["Challenge Details"].buttons["Back"]
        backButton.tap()
        
        let musicListNavigationBar = app.navigationBars["Music List"]
        musicListNavigationBar.buttons["speech bubble"].tap()
        app.navigationBars["Chat"].buttons["Back"].tap()
        button.tap()
        
        let element2 = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element
        let settingButton = element2.children(matching: .other).element(boundBy: 1).buttons["setting"]
        settingButton.tap()
        
        let editChallengeNameAlert = app.alerts["Edit Challenge Name"]
        editChallengeNameAlert.buttons["Cancel"].tap()
        element2.children(matching: .other).element(boundBy: 2).buttons["setting"].tap()
        app.alerts["Metric Error"].buttons["Ok"].tap()
        
        let settingButton2 = element2.children(matching: .other).element(boundBy: 3).buttons["setting"]
        settingButton2.tap()
        
        let editDescriptionAlert = app.alerts["Edit Description"]
        editDescriptionAlert.buttons["Cancel"].tap()
        element2.children(matching: .other).element(boundBy: 4).buttons["setting"].tap()
        app.buttons["Cancel"].tap()
        element2.children(matching: .other).element(boundBy: 5).buttons["setting"].tap()
        app.alerts["Turn Privacy On"].buttons["Cancel"].tap()
        settingButton.tap()
        editChallengeNameAlert.typeText("Music List")
        editChallengeNameAlert.buttons["Confirm"].tap()
        settingButton2.tap()
        editDescriptionAlert.typeText("Share sweet tracks")
        editDescriptionAlert.buttons["Confirm"].tap()
        backButton.tap()
        musicListNavigationBar.buttons["Challenges"].tap()
        element.children(matching: .button).element(boundBy: 0).tap()
        
    }
    func test8ChkListUse() {
        //This script addresses the following key tests:
        //Checklist chat
        //Creating a checklist step
        //Editing a checklist step
        //Completing a checklist step
        //Deleting a checklist step
        
        let app = XCUIApplication()
        let toolbar = app.toolbars["Toolbar"]
        let element = toolbar.children(matching: .other).element.children(matching: .other).element
        element.children(matching: .button).element(boundBy: 1).tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Music List"]/*[[".cells.staticTexts[\"Music List\"]",".staticTexts[\"Music List\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Music List"].buttons["speech bubble"].tap()
        app.textViews.containing(.staticText, identifier:"New Message").element.tap()
        app.textViews.containing(.staticText, identifier:"New Message").element.typeText("Test message")
        app.buttons["send"].tap()
        app.navigationBars["Chat"].buttons["Back"].tap()
        element.children(matching: .button).element(boundBy: 0).tap()
        //
        app.tables["You have no friends right now. Add some from the ‘Search Users’ page!"].buttons["Back"].tap()
        
        //
        let itemButton = toolbar.buttons["Item"]
        toolbar.buttons["Item"].tap()
        
        let element2 = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element
        element2.children(matching: .other).element(boundBy: 1).buttons["?"].tap()
        app.alerts["Checklist Step Name"].buttons["Ok"].tap()
        element2.children(matching: .other).element(boundBy: 2).buttons["?"].tap()
        app.alerts["Checklist Step Description"].buttons["Ok"].tap()
        app.buttons["Cancel"].tap()
        itemButton.tap()
        
        let checklistStepNameTextField = app.textFields["Checklist Step Name"]
        checklistStepNameTextField.tap()
        checklistStepNameTextField.typeText("Step 1")
        
        let checklistStepDescriptionTextField = app.textFields["Checklist Step Description"]
        checklistStepDescriptionTextField.tap()
        checklistStepDescriptionTextField.typeText("Step 1 description")
        
        let submitButton = app.buttons["Submit"]
        submitButton.tap()
        itemButton.tap()
        checklistStepNameTextField.tap()
        checklistStepNameTextField.typeText("Step 3")
        checklistStepDescriptionTextField.tap()
        checklistStepDescriptionTextField.typeText("Step 3 Description")
        submitButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Step 3"]/*[[".cells.staticTexts[\"Step 3\"]",".staticTexts[\"Step 3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let element3 = app.otherElements.containing(.navigationBar, identifier:"Step 3").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let settingButton = element3.children(matching: .other).element(boundBy: 1).buttons["setting"]
        settingButton.tap()
        
        let checklistStep3NameTextField = app.textFields["Step 3 Description"]
        checklistStep3NameTextField.typeText("Step 3 New title")
        
        let editStepNameAlert = app.alerts["Edit Step Name"]
        editStepNameAlert.buttons["Confirm"].tap()
        
        app.navigationBars["Step 3"].buttons["Back"].tap()
        tablesQuery.cells.containing(.staticText, identifier:"Step 1").staticTexts["Nobody has completed this step"].tap()
        
        let markAsCompletedButton = app.buttons["Mark as Completed"]
        markAsCompletedButton.tap()
        
        let stepCompleteAlert = app.alerts["Step Complete"]
        stepCompleteAlert.buttons["Cancel"].tap()
        markAsCompletedButton.tap()
        stepCompleteAlert.buttons["Confirm"].tap()
        app.navigationBars["Step 1"].buttons["Back"].tap()
        
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Step 3 New title"]/*[[".cells.staticTexts[\"Step 3 New title\"]",".staticTexts[\"Step 3 New title\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let deleteStepButton = app.buttons["Delete Step"]
        deleteStepButton.tap()
        
        let deleteStepAlert = app.alerts["Delete Step"]
        deleteStepAlert.buttons["Cancel"].tap()
        deleteStepButton.tap()
        deleteStepAlert.buttons["Confirm"].tap()
        
    }
    func test91FeedActivity() {
        //This script addresses the key tests:
        //Navigate feed activities
        //Comment on feed activities
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Automation Bot has completed the step Step 1 for the challenge Music List.").element/*[[".cells.containing(.image, identifier:\"checklistActivityUpdate\").element",".cells.containing(.staticText, identifier:\"39 minutes ago\").element",".cells.containing(.staticText, identifier:\"Automation Bot has completed the step Step 1 for the challenge Music List.\").element"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let homeButton = app.navigationBars["Comments"].buttons["Home"]
        homeButton.tap()
        
        let tablesQuery2 = tablesQuery
        tablesQuery2/*@START_MENU_TOKEN@*/.staticTexts["Automation Bot added 2 Test Metric to the challenge Test Graph Challenge."]/*[[".cells.staticTexts[\"Automation Bot added 2 Test Metric to the challenge Test Graph Challenge.\"]",".staticTexts[\"Automation Bot added 2 Test Metric to the challenge Test Graph Challenge.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        homeButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Automation Bot has completed the step Step 1 for the challenge Music List.")/*[[".cells.containing(.image, identifier:\"checklistActivityUpdate\")",".cells.containing(.staticText, identifier:\"39 minutes ago\")",".cells.containing(.staticText, identifier:\"Automation Bot has completed the step Step 1 for the challenge Music List.\")"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.buttons["likes"].tap()
        
        app.tables/*@START_MENU_TOKEN@*/.buttons["likes"]/*[[".cells.buttons[\"likes\"]",".buttons[\"likes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Comments"].buttons["Home"].tap()
        
        app.tables/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Automation Bot has completed the step Step 1 for the challenge Music List.")/*[[".cells.containing(.button, identifier:\"1\")",".cells.containing(.button, identifier:\"likes dark\")",".cells.containing(.image, identifier:\"checklistActivityUpdate\")",".cells.containing(.staticText, identifier:\"Automation Bot has completed the step Step 1 for the challenge Music List.\")"],[[[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.buttons["comment"].tap()
        app.textFields["Post a comment..."].tap()
        app.textFields["Post a comment..."].typeText("test comment")
        app.buttons["Send"].tap()
        XCUIApplication().navigationBars["Comments"].buttons["Home"].tap()
        
    }
    
    func test9ProfileActivity() {
        //This script addresses the key tests:
        //Navigate profile activities
        //Comment on activities from profile page
        
        let app = XCUIApplication()
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: Date()) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "HHddMMyyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!).lowercased()
        
        app.navigationBars["Home"].children(matching: .button).element.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Automation Bot has completed the step Step 1 for the challenge Music List."]/*[[".cells.staticTexts[\"Automation Bot has completed the step Step 1 for the challenge Music List.\"]",".staticTexts[\"Automation Bot has completed the step Step 1 for the challenge Music List.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Comments"].buttons[myStringafd].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Automation Bot added 2 Test Metric to the challenge Test Graph Challenge."]/*[[".cells.staticTexts[\"Automation Bot added 2 Test Metric to the challenge Test Graph Challenge.\"]",".staticTexts[\"Automation Bot added 2 Test Metric to the challenge Test Graph Challenge.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let postACommentTextField = app.textFields["Post a comment..."]
        postACommentTextField.tap()
        postACommentTextField.typeText("Comment from profile page")
        app.buttons["Send"].tap()
        
        app.navigationBars["Comments"].buttons[myStringafd].tap()
        app.navigationBars[myStringafd].buttons["Home"].tap()
        
    }
}



