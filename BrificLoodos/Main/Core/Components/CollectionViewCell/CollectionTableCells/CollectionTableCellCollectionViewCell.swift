//
//  CollectionTableCellCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 10.08.2023.
//

import UIKit

class CollectionTableCellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionView: UIView!
    
    @IBOutlet weak var buttonName: UILabel!
    
    @IBOutlet weak var buttonImage: UIView!
    
    @IBOutlet weak var buttonImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        
    }
    private func setupUI() {
        collectionView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        collectionView.layer.shadowColor = UIColor(red: 0.114, green: 0.133, blue: 0.18, alpha: 0.1).cgColor
        collectionView.layer.shadowOpacity = 1
        collectionView.layer.shadowRadius = 20
        collectionView.layer.shadowOffset = CGSize(width: 0, height: 4)
        collectionView.layer.cornerRadius = 8
        collectionView.layer.borderWidth = 1
        collectionView.layer.borderColor = UIColor(red: 0.937, green: 0.945, blue: 0.961, alpha: 1).cgColor
        buttonImage.layer.backgroundColor = UIColor(red: 0.937, green: 0.945, blue: 0.961, alpha: 1).cgColor
        buttonImage.layer.cornerRadius = 6
        buttonName.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        buttonName.font = UIFont(name: "Poppins-Medium", size: 14)
    }
    
}
