//
//  BrificUnitsCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 9.08.2023.
//

import UIKit

class BrificUnitsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var brificUnitsContainer: UIView!
    @IBOutlet weak var brificUnitsLabel: UILabel!
    @IBOutlet weak var speedControl: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        customModeControl(speedControl)
    }
    
    private func setupUI() {
        brificUnitsContainer.layer.backgroundColor = UIColor(red: 0.937, green: 0.945, blue: 0.961, alpha: 1).cgColor
        brificUnitsContainer.layer.cornerRadius = 8
        brificUnitsLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        brificUnitsLabel.font = UIFont(name: "Poppins-Medium", size: 14)
        
    }
    
    func customModeControl(_ control:UISegmentedControl) {
        let font = UIFont(name: "Poppins-Regular", size: 12)
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: font ?? .systemFont(ofSize: 12),
            .foregroundColor : UIColor.white
        ]
        
        speedControl.setTitleTextAttributes(normalAttributes, for: .normal)
        
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .font: font ?? .systemFont(ofSize: 12),
            .foregroundColor : UIColor.white
        ]
        
        speedControl.setTitleTextAttributes(selectedAttributes, for: .selected)
        speedControl.selectedSegmentTintColor = UIColor(red: 0.04, green: 0.24, blue: 1, alpha: 1)
    }
}
