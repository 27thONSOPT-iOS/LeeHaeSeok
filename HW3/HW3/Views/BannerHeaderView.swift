//
//  BannerHeaderView.swift
//  HW3
//
//  Created by Haeseok Lee on 2020/11/06.
//

import UIKit

class BannerHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerTitleLabel: UILabel!
    @IBOutlet weak var bannerInfoLabel: UILabel!
    
    func setImage(imageName: String) {
        bannerImageView.image = UIImage(named: imageName)
    }
    
    func setTitle(title: String) {
        bannerTitleLabel.text = title
    }
    
    func setInfo(info: String) {
        bannerInfoLabel.text = info
    }
    
}
