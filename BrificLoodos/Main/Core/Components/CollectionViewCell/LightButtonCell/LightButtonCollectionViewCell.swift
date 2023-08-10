//
//  LightButtonCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 10.08.2023.
//

import UIKit

class LightButtonCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var collectionView: UIView!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var collectionViewCont: UIView!
    @IBOutlet weak var lightsOnOffLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    private func setupUI() {
        collectionViewCont.backgroundColor = AddedMyBrificViewController().view.backgroundColor
        lightsOnOffLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        lightsOnOffLabel.font = UIFont(name: "Poppins-SemiBold", size: 14)
            }
}
