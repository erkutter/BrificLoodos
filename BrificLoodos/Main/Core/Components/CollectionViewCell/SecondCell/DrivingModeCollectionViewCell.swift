//
//  DrivingModeCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 9.08.2023.
//

import UIKit

class DrivingModeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var drivingModeLabel: UILabel!
    @IBOutlet weak var chooseYourLabel: UILabel!
    @IBOutlet weak var modeControl: UISegmentedControl!
    @IBOutlet weak var cell2Container: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        customModeControl(modeControl)
    }
    
    private func setupUI(){
        cell2Container.layer.backgroundColor = UIColor(red: 0.937, green: 0.945, blue: 0.961, alpha: 1).cgColor
        cell2Container.layer.cornerRadius = 8
        drivingModeLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        drivingModeLabel.font = UIFont(name: "Poppins-SemiBold", size: 16)
        chooseYourLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        chooseYourLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        
    }
    
    func customModeControl(_ control:UISegmentedControl) {
        let font = UIFont(name: "Poppins-Regular", size: 12)
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: font ?? .systemFont(ofSize: 12),
            .foregroundColor : UIColor.white
        ]
        
        modeControl.setTitleTextAttributes(normalAttributes, for: .normal)
        
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .font: font ?? .systemFont(ofSize: 12),
            .foregroundColor : UIColor.white
        ]
        
        modeControl.setTitleTextAttributes(selectedAttributes, for: .selected)
        modeControl.selectedSegmentTintColor = UIColor(red: 0.04, green: 0.24, blue: 1, alpha: 1)
    }
}
