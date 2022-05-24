//
//  feiraloverViewCellCollectionViewCell.swift
//  feirita
//
//  Created by Bof on 19/05/22.
//

import UIKit

class feiraloverViewCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet var image: UIImageView!
    func arrumar() {
        image.translatesAutoresizingMaskIntoConstraints = true
        image.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        image.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    }
}
