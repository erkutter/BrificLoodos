//
//  ProfileViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 31.07.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
        profileContainerView.layer.cornerRadius = 40
    }


  

}
