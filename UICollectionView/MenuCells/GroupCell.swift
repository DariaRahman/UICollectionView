//
//  GroupCell.swift
//  UICollectionView
//
//  Created by Dasha Rahman on 29.07.23.
//

import UIKit

class GroupCell: UICollectionViewCell {

    @IBOutlet weak var nameGroup: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
         self.contentView.backgroundColor = .white
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(group:Group,isSelected:Bool){
        self.nameGroup.text = group.name
        if isSelected{
            self.contentView.backgroundColor = .orange
        } else{
            self.contentView.backgroundColor = .white
        }
    }

}
