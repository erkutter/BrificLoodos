//
//  ButtonCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 10.08.2023.
//

import UIKit

class ButtonCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var checkUpdateButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    private func setupUI () {
        checkUpdateButton.layer.cornerRadius = 12
        checkUpdateButton.layer.shadowColor = UIColor(red: 0.035, green: 0.243, blue: 0.996, alpha: 0.3).cgColor
        checkUpdateButton.layer.shadowOpacity = 1
        checkUpdateButton.layer.shadowRadius = 20
        checkUpdateButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        checkUpdateButton.layer.backgroundColor = UIColor(red: 0.035, green: 0.243, blue: 0.996, alpha: 1).cgColor
//        checkUpdateButton.a?.font = UIFont(name: "Poppins-Medium", size: 14)
    }
}
