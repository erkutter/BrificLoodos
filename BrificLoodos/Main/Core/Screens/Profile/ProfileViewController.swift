//
//  ProfileViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 31.07.2023.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var profileContainerView: UIView!
    
    @IBOutlet weak var profileTableView: UITableView!
    
    var cellImageNames = ["scooter", "chatting", "mapGps", "settings"]
    
    var cellLabels = ["My Brific", "Help and Support", "Getting Started", "Settings"]
    
    let cellIdentifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
        
        profileContainerView.layer.cornerRadius = 40
        //tableView
        profileTableView.dataSource = self
        
        profileTableView.delegate = self
        
        profileTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        profileTableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        //tableViewCustomization
        profileTableView.separatorStyle = .none
        profileTableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        profileTableView.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cellLabels.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CustomTableViewCell
        cell.cellLabel.text = cellLabels[indexPath.section]
        
        cell.cellMainImage.image = UIImage(named: cellImageNames[indexPath.section])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell selected")
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView()
            headerView.backgroundColor = UIColor.clear
            return headerView
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 10
        }
}
