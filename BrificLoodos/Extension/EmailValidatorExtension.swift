//
//  EmailValidatorExtension.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 16.08.2023.
//

import Foundation

extension String {
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}
