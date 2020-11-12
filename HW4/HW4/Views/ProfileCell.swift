//
//  ProfileCell.swift
//  HW3
//
//  Created by Haeseok Lee on 2020/11/06.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileHashtag: UILabel!
    
    func setImage(imageName: String) {
        profileImageView.image = UIImage(named: imageName)
    }
    
    func setName(name: String) {
        profileName.text = name
    }

    func setHashtag(hashtag: String) {
        profileHashtag.text = hashtag
    }
    
}
