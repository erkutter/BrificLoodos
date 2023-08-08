//
//  MyBrificViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 7.08.2023.
//

import UIKit

class MyBrificViewController: UIViewController {

    @IBOutlet weak var scooterInfoLabel: UILabel!
    
    @IBOutlet weak var addBrificButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//labelCustomization
        scooterInfoLabel.text = "No Scooters have been added yet"
        scooterInfoLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        scooterInfoLabel.font = UIFont(name: "Poppins-SemiBold", size: 16)
//buttonCustomization
        addBrificButton.layer.backgroundColor = UIColor(red: 0.035, green: 0.243, blue: 0.996, alpha: 1).cgColor
        addBrificButton.layer.shadowColor = UIColor(red: 0.035, green: 0.243, blue: 0.996, alpha: 0.3).cgColor
        addBrificButton.layer.shadowOpacity = 1
        addBrificButton.layer.shadowRadius = 20
        addBrificButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        addBrificButton.frame = CGRect(x: 0, y: 0, width: 103, height: 21)
        addBrificButton.titleLabel?.textColor = UIColor(red: 1, green: 1, blue: 0.984, alpha: 1)
        addBrificButton.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 14)
        addBrificButton.layer.cornerRadius = 12
    }



}
