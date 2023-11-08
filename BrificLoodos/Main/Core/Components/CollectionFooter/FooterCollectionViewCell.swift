//
//  FooterCollectionViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 10.08.2023.
//

import UIKit

class FooterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var disclaimerLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    private func setupUI() {
        // Auto layout, variables, and unit scale are not yet supported
        disclaimerLabel.frame = CGRect(x: 0, y: 0, width: 287, height: 36)
        disclaimerLabel.textColor = UIColor(red: 0.118, green: 0.141, blue: 0.184, alpha: 1)
        disclaimerLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        disclaimerLabel.numberOfLines = 0
        disclaimerLabel.lineBreakMode = .byWordWrapping
        // Line height: 18 pt
        disclaimerLabel.attributedText = NSMutableAttributedString(string: "Vivamus dictum non ipsum non elementum. Duis nec erat maximus sodales.", attributes: [NSAttributedString.Key.kern: -0.3])


    }
}
