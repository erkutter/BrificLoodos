//
//  CustomTableViewCell.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 1.08.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellMainImage: UIImageView!
    
    @IBOutlet weak var imageContainerView: UIView!
    
    @IBOutlet weak var mainContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellLabel.font = UIFont(name: "Poppins-Medium", size: 14)
        imageContainerView.layer.cornerRadius = 6
        //
      
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        if selected {
            let selectedBackgroundView = UIView()
            selectedBackgroundView.backgroundColor = .white
            selectedBackgroundView.layer.cornerRadius = 8
            selectedBackgroundView.layer.masksToBounds = true
            self.selectedBackgroundView = selectedBackgroundView
        } else {
            self.selectedBackgroundView = nil
        }
    }
    
}
