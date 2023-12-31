//
//  EditProfileViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 3.08.2023.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    let indicator = UIActivityIndicatorView(style: .large)
    
    @IBOutlet weak var genderContainer: UIView!
    
    @IBOutlet weak var birthContainer: UIView!
    
    @IBOutlet weak var eMailContainer: UIView!
    
    @IBOutlet weak var mobileContainer: UIView!
    
    @IBOutlet weak var profileContainerView: UIView!
    
    @IBOutlet weak var scrollViewContainer: UIView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var surnameLabel: UILabel!
    
    @IBOutlet weak var mobilePhoneLabel: UILabel!
    
    @IBOutlet weak var eMailLabel: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var surname: UITextField!
    
    @IBOutlet weak var mobilePhone: UITextField!
    
    @IBOutlet weak var eMail: UITextField!
    
    @IBOutlet weak var dateOfBirth: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var genderControl: UISegmentedControl!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        fillCustomerInfo()
        setupUI()
    }
    
    private func setupUI() {
        profileContainerView.layer.cornerRadius = profileContainerView.frame.width / 2
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
        profileImage.clipsToBounds = true        //backgroundcolor
        backgroundColor(view.self)
        backgroundColor(scrollViewContainer)
        backgroundColor(birthContainer)
        backgroundColor(eMailContainer)
        backgroundColor(mobileContainer)
        backgroundColor(genderContainer)
        //labelCustomizations
        labelCustomization(userNameLabel)
        userNameLabel.font = UIFont(name: "Poppins-SemiBold", size: 16)
        labelCustomization(nameLabel)
        labelCustomization(surnameLabel)
        labelCustomization(mobilePhoneLabel)
        labelCustomization(eMailLabel)
        labelCustomization(birthLabel)
        labelCustomization(genderLabel)
        //textFieldCustomization
        textFieldCustomization(name)
        textFieldCustomization(surname)
        textFieldCustomization(mobilePhone)
        mobilePhone.backgroundColor = UIColor(red: 0.96, green: 0.97, blue: 0.97, alpha: 1.00)
        textFieldCustomization(eMail)
        textFieldCustomization(dateOfBirth)
        //saveButtonCustomization
        saveButton.layer.backgroundColor = UIColor(red: 0.035, green: 0.243, blue: 0.996, alpha: 1).cgColor
        saveButton.layer.shadowColor = UIColor(red: 0.035, green: 0.243, blue: 0.996, alpha: 0.3).cgColor
        saveButton.layer.shadowOpacity = 1
        saveButton.layer.shadowRadius = 20
        saveButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        saveButton.frame = CGRect(x: 0, y: 0, width: 103, height: 21)
        saveButton.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 0.984, alpha: 1)
        saveButton.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 14)
        saveButton.layer.cornerRadius = 12
        deleteButton.titleLabel?.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        deleteButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 12)
        //genderCustomization
        customGenderControl(genderControl)
        //mobilePhoneTextFieldCustomization
        mobilePhone.isUserInteractionEnabled = false
        mobilePhone.keyboardType = .numberPad
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func saveChangesTapped(_ sender: Any) {
        saveCustomerInfo()
    }
    
    func labelCustomization(_ label:UILabel) {
        label.font = UIFont(name: "Poppins-Regular", size: 12)
        label.textColor = UIColor(red: 0.157, green: 0.188, blue: 0.247, alpha: 1)
    }
    
    func textFieldCustomization(_ textField:UITextField) {
        textField.layer.backgroundColor = UIColor(red: 0.97, green: 0.96, blue: 0.96, alpha: 1.00).cgColor
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.855, green: 0.871, blue: 0.906, alpha: 1).cgColor
    }
    
    func backgroundColor(_ view:UIView) {
        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
    }
    
    func customGenderControl(_ control:UISegmentedControl) {
        let font = UIFont(name: "Poppins-Regular", size: 12)
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: font ?? .systemFont(ofSize: 12),
            .foregroundColor : UIColor.white
        ]
        
        genderControl.setTitleTextAttributes(normalAttributes, for: .normal)
        
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .font: font ?? .systemFont(ofSize: 12),
            .foregroundColor : UIColor.white
        ]
        
        genderControl.setTitleTextAttributes(selectedAttributes, for: .selected)
        genderControl.selectedSegmentTintColor = UIColor(red: 0.04, green: 0.24, blue: 1, alpha: 1)
    }
    
    func fillCustomerInfo() {
        //        indicator.startAnimating()
        //        indicator.color = .red
        //        indicator.center = view.center
        //        indicator.backgroundColor = .black
        //        view.addSubview(indicator)
        var segment: Int = 0
        if UserManager.shared.user?.customerGender == "FEMALE" {
            segment = 1
        }
        
        self.name.text = UserManager.shared.user?.customerName
        self.surname.text = UserManager.shared.user?.customerSurname
        self.mobilePhone.text = UserManager.shared.user?.customerPhoneNumber
        self.genderControl.selectedSegmentIndex = segment
        self.dateOfBirth.text = UserManager.shared.user?.customerBirthday
        self.eMail.text = UserManager.shared.user?.customerEmail
        self.userNameLabel.text = (UserManager.shared.user?.customerName ?? "")+" "+(UserManager.shared.user?.customerSurname ?? "")
        //        indicator.stopAnimating()
    }
    
    func showAlertWithMessage(_ message: String) {
        let alertController = UIAlertController(title: "Success", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func saveCustomerInfo() {
        //fill user info
        UserManager.shared.user?.customerName = name.text!
        UserManager.shared.user?.customerSurname = surname.text!
        UserManager.shared.user?.customerBirthday = dateOfBirth.text!
        UserManager.shared.user?.customerGender = (genderControl.titleForSegment(at: genderControl.selectedSegmentIndex)?.uppercased())!
        UserManager.shared.user?.customerEmail = eMail.text!
        
        if !UserManager.shared.user!.customerEmail.isValidEmail() {
            showAlertWithMessage("Invalid email address")
            return
        }
        
        APIClient.updateCustomerData(
            name: UserManager.shared.user!.customerName,
            surname: UserManager.shared.user!.customerSurname,
            gender: UserManager.shared.user!.customerGender,
            birthday: UserManager.shared.user!.customerBirthday,
            email: UserManager.shared.user!.customerEmail) { [weak self] success, errorMessage in
                DispatchQueue.main.async {
                    if success {
                        self?.showAlertWithMessage("User information updated")
                    } else {
                        print(errorMessage ?? "")
                    }
                    self?.fillCustomerInfo()
                }
            }
    }
}
