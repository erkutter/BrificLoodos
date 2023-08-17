//
//  EmailValidateTestCase.swift
//  BrificLoodosTests
//
//  Created by Erkut Ter on 16.08.2023.


import XCTest
@testable import BrificLoodos

final class EmailValidatorExtensionTest: XCTestCase {
    func testEmailValidation() {
        let eMail1 = "user@example.com"
        let eMail2 = "user@sub.example.com"
        let eMail3 = "user-name@example.com"
        //false
        let eMail4 = "userexample.com"
        let eMail5 = "user@"
        let eMail6 = "user@@example.com"
        let eMail7 = "@example.com"
        
        XCTAssertTrue(eMail1.isValidEmail())
        XCTAssertTrue(eMail2.isValidEmail())
        XCTAssertTrue(eMail3.isValidEmail())
        XCTAssertFalse(eMail4.isValidEmail())
        XCTAssertFalse(eMail5.isValidEmail())
        XCTAssertFalse(eMail6.isValidEmail())
        XCTAssertFalse(eMail7.isValidEmail())
    }
}
