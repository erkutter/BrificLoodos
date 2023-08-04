//
//  EditProfileViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 3.08.2023.
//

import UIKit

class EditProfileViewController: UIViewController {

    
    @IBOutlet weak var propsScroll: UIScrollView!


    override func viewDidLoad() {
        super.viewDidLoad()
       
        
//        profileContainerView.layer.cornerRadius = profileContainerView.frame.width / 2
//        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
//
//        //labelCustomizations
//        labelCustomization(userNameLabel)
//        labelCustomization(nameLabel)
//        userNameLabel.font = UIFont(name: "Poppins-SemiBold", size: 16)
//        labelCustomization(surnameLabel)
//        labelCustomization(mobilePhoneLabel)
//        labelCustomization(eMailLabel)
//        labelCustomization(dateLabel)
//
//        //textFieldCustomization
//        textFieldCustomization(nameInputField)
//        textFieldCustomization(surnameInputField)
//        textFieldCustomization(mobilePhoneField)
//        textFieldCustomization(eMailTextField)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.tabBarController?.tabBar.isHidden = false
    }

    func labelCustomization(_ label:UILabel) {
        label.font = UIFont(name: "Poppins-Regular", size: 12)
        label.textColor = UIColor(red: 0.157, green: 0.188, blue: 0.247, alpha: 1)
    }
    func textFieldCustomization(_ textField:UITextField) {
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.855, green: 0.871, blue: 0.906, alpha: 1).cgColor
    }

}
