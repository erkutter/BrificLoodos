//
//  ProfileViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 31.07.2023.
//

import UIKit

class ProfileViiewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var profileContainerView: UIView!
    
    @IBOutlet weak var profileTableView: UITableView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var editProfileButton: UIButton!
    
    @IBOutlet weak var logOutContainerView: UIView!
    
    @IBOutlet weak var logOutButton: UIButton!
    
    var cellImageNames = ["scooter", "chatting", "mapGps", "settings"]
    
    var cellLabels = ["My Brific", "Help and Support", "Getting Started", "Settings"]
    
    let cellIdentifier = "CellIdentifier"
    
    let cellSpacing: CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
        
        nameLabel.font = UIFont(name: "Poppins-Semibold", size: 16)
        editProfileButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 12)
        
        profileContainerView.layer.cornerRadius = 40
        //tableView
        profileTableView.dataSource = self
        
        profileTableView.delegate = self
        
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        profileTableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        //tableViewCustomization
        profileTableView.separatorStyle = .none
        profileTableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        profileTableView.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
        profileTableView.rowHeight = UITableView.automaticDimension
        //logout button container
        logOutContainerView.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
        //logout button
        logOutButton.layer.cornerRadius = 12
        logOutButton.layer.borderWidth = 1
        logOutButton.layer.borderColor = UIColor(red: 0.855, green: 0.871, blue: 0.906, alpha: 1).cgColor
        logOutButton.layer.shadowColor = UIColor(red: 0.035, green: 0.243, blue: 0.996, alpha: 0.3).cgColor
        logOutButton.layer.shadowOpacity = 1
        logOutButton.layer.shadowRadius = 20
        logOutButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        
    }
    
    
    @IBAction func editProfileTapped(_ sender: UIButton) {
        let editProfileViewController = EditProfileViewController(nibName: "EditProfileViewController", bundle: nil)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.pushViewController(editProfileViewController, animated: true)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cellLabels.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return cellSpacing
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = UIColor.clear
        return footerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CustomTableViewCell
        cell.cellLabel.text = cellLabels[indexPath.section]
        cell.cellMainImage.image = UIImage(named: cellImageNames[indexPath.section])
        //cell properties
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = false
        cell.layer.shadowColor = UIColor(red: 0.114, green: 0.133, blue: 0.18, alpha: 0.1).cgColor
        cell.layer.shadowOpacity = 1
        cell.layer.shadowOffset = CGSize(width: 0, height: 4)
        cell.layer.shadowRadius = 20
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(IndexPath.self)
    }
    
}
