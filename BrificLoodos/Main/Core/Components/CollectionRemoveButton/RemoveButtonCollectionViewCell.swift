//
//  RemoveButtonCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 10.08.2023.
//

import UIKit

class RemoveButtonCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var removeButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    private func setupUI() {
        removeButton.layer.cornerRadius = 12
        removeButton.layer.borderWidth = 1
        removeButton.layer.borderColor = UIColor(red: 0.855, green: 0.871, blue: 0.906, alpha: 1).cgColor
    }
}
