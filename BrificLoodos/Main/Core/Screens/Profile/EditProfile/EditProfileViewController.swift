//
//  EditProfileViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 3.08.2023.
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet weak var profileContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileContainerView.layer.cornerRadius = profileContainerView.frame.width / 2
        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.tabBarController?.tabBar.isHidden = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
