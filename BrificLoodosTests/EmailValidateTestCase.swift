//
//  EmailValidateTestCase.swift
//  BrificLoodosTests
//
//  Created by Erkut Ter on 16.08.2023.
//

import XCTest
@testable import BrificLoodos

final class EmailValidateTestCase: XCTestCase {
    
    func testEmailValidation() {
        let emailValidator = EditProfileViewController.EmailValidator()
        
        let eMail1 = "user@example.com"
        let eMail2 = "user@sub.example.com"
        let eMail3 = "user-name@example.com"
        //false
        let eMail4 = "userexample.com"
        let eMail5 = "user@"
        let eMail6 = "user@@example.com"
        let eMail7 = "@example.com"
        
        XCTAssertTrue(emailValidator.isValidEmail(eMail1))
        XCTAssertTrue(emailValidator.isValidEmail(eMail2))
        XCTAssertTrue(emailValidator.isValidEmail(eMail3))
        XCTAssertFalse(emailValidator.isValidEmail(eMail4))
        XCTAssertFalse(emailValidator.isValidEmail(eMail5))
        XCTAssertFalse(emailValidator.isValidEmail(eMail6))
        XCTAssertFalse(emailValidator.isValidEmail(eMail7))
    }
}



