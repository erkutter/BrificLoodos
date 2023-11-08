//
//  PropertiesCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 9.08.2023.
//

import UIKit

class PropertiesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainContainerView: UIView!
    
    @IBOutlet weak var propertiesContainerView: UIView!
    
    @IBOutlet weak var modelDetailsContainerView: UIView!
    
    @IBOutlet weak var batteryHealthLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var countIntLabel: UILabel!
    
    @IBOutlet weak var healthLabel: UILabel!
    
    @IBOutlet weak var normalLabel: UILabel!
    
    @IBOutlet weak var modelNameLabel: UILabel!
    
    @IBOutlet weak var modelNo: UILabel!
    
    @IBOutlet weak var serialNumberLabel: UILabel!
    
    @IBOutlet weak var totalKmLabel: UILabel!
    
    @IBOutlet weak var serialNumberItntLabel: UILabel!
    
    @IBOutlet weak var totalKmIntLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI(){
        mainContainerView.layer.backgroundColor = UIColor(red: 0.937, green: 0.945, blue: 0.961, alpha: 1).cgColor
        mainContainerView.layer.cornerRadius = 8
        modelDetailsContainerView.layer.cornerRadius = 8
        modelDetailsContainerView.layer.backgroundColor = UIColor(red: 0.937, green: 0.945, blue: 0.961, alpha: 1).cgColor
        propertiesContainerView.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        propertiesContainerView.layer.cornerRadius = 8
        batteryHealthLabel.frame = CGRect(x: 0, y: 0, width: 101, height: 20)
        batteryHealthLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        batteryHealthLabel.font = UIFont(name: "Poppins-Medium", size: 14)
        countLabel.textColor = UIColor(red: 0.558, green: 0.582, blue: 0.629, alpha: 1)
        countLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        healthLabel.textColor = UIColor(red: 0.558, green: 0.582, blue: 0.629, alpha: 1)
        healthLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        countIntLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        countIntLabel.font = UIFont(name: "Poppins-Medium", size: 12)
        normalLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        normalLabel.font = UIFont(name: "Poppins-Medium", size: 12)
        modelNo.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        modelNo.font = UIFont(name: "Poppins-Medium", size: 12)
        serialNumberItntLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        serialNumberItntLabel.font = UIFont(name: "Poppins-Medium", size: 12)
        totalKmIntLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        totalKmIntLabel.font = UIFont(name: "Poppins-Medium", size: 12)
        modelNameLabel.textColor = UIColor(red: 0.558, green: 0.582, blue: 0.629, alpha: 1)
        modelNameLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        serialNumberLabel.textColor = UIColor(red: 0.558, green: 0.582, blue: 0.629, alpha: 1)
        serialNumberLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        totalKmLabel.textColor = UIColor(red: 0.558, green: 0.582, blue: 0.629, alpha: 1)
        totalKmLabel.font = UIFont(name: "Poppins-Regular", size: 12)
    }
}
