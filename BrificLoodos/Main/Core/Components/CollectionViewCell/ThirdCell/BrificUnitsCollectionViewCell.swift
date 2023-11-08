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
        fixBackgroundColorWorkaround()
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
            .foregroundColor : UIColor(red: 0.56, green: 0.57, blue: 0.58, alpha: 1)
        ]
        
        speedControl.setTitleTextAttributes(normalAttributes, for: .normal)
        
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .font: font ?? .systemFont(ofSize: 12),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        ]
        
        speedControl.setTitleTextAttributes(selectedAttributes, for: .selected)
        speedControl.selectedSegmentTintColor = UIColor(red: 0.04, green: 0.24, blue: 1, alpha: 1)
    }
    func fixBackgroundColorWorkaround() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            for i in 0 ... (self.speedControl.numberOfSegments-1) {
                let bg = self.speedControl.subviews[i]
                bg.isHidden = true
            }
        }
    }
}
