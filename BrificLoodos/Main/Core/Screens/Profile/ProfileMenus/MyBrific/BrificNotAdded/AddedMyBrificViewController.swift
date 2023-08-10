//
//  AddedMyBrificViewController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 8.08.2023.
//

import UIKit

class AddedMyBrificViewController: UIViewController {
    
    @IBOutlet weak var aliasLabel: UILabel!
    @IBOutlet weak var brificName: UITextField!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        registerCells()
    }
    
    private func setupViews() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        aliasLabel.textColor = UIColor(red: 0.773, green: 0.792, blue: 0.827, alpha: 1)
        aliasLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        
        brificName.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        brificName.layer.cornerRadius = 8
        brificName.layer.borderWidth = 1
        brificName.layer.borderColor = UIColor(red: 0.855, green: 0.871, blue: 0.906, alpha: 1).cgColor
    }
    
    private func registerCells() {
        collectionView.register(UINib(nibName: "PropertiesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell1")
        collectionView.register(UINib(nibName: "DrivingModeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell2")
        collectionView.register(UINib(nibName: "BrificUnitsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell3")
        collectionView.register(UINib(nibName: "LightButtonCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell4")
        collectionView.register(UINib(nibName: "CollectionTableCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell5")
        collectionView.register(UINib(nibName: "CollectionTableCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell6")
        collectionView.register(UINib(nibName: "CollectionTableCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell7")

    }
}

extension AddedMyBrificViewController: UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as? PropertiesCollectionViewCell
            
            return cell1 ?? UICollectionViewCell()
        } else if indexPath.item == 1 {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as? DrivingModeCollectionViewCell
            
            return cell2 ?? UICollectionViewCell()
        } else if indexPath.item == 2{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as? BrificUnitsCollectionViewCell
            
            return cell3 ?? UICollectionViewCell()
        } else if indexPath.item == 3{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as? LightButtonCollectionViewCell
            
            return cell4 ?? UICollectionViewCell()
        } else if indexPath.item == 4{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as? CollectionTableCellCollectionViewCell
            
            cell5?.buttonImageView.image = UIImage(named: "bluetooth")
            cell5?.buttonName.text = "Disconnect"
            
            return cell5 ?? UICollectionViewCell()
        } else if indexPath.item == 5{
            let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as? CollectionTableCellCollectionViewCell
            
            cell6?.buttonImageView.image = UIImage(named: "repair")
            cell6?.buttonName.text = "Service Deck"
            
            return cell6 ?? UICollectionViewCell()
        } else {
            let cell7 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as? CollectionTableCellCollectionViewCell
            
            cell7?.buttonImageView.image = UIImage(named: "openBook")
            cell7?.buttonName.text = "User Manual"
            
            return cell7 ?? UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.frame.width
        var cellHeight: CGFloat = 0
        
        if indexPath.item == 0 {
            cellHeight = 154
        } else if indexPath.item == 1 {
            cellHeight = 146
        } else if indexPath.item == 2 {
            cellHeight = 82
        } else if indexPath.item == 3 {
            cellHeight = 52
        } else {
            cellHeight = 64
        }
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
}
