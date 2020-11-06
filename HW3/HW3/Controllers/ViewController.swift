//
//  ViewController.swift
//  HW3
//
//  Created by Haeseok Lee on 2020/11/05.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    let profiles: [Profile] = [
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis #아요 #내꿈은 \n#사과농장 #ENFP"),
    ]
    
    let headers: [Header] = [
        Header(imageName: "banner", title: "SOPT + NETWORKING", info: "대학생 연합 IT 창업 동아리의 네트워킹을 위한 플랫폼입니다.  ")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
    }

}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return profiles.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyConstants.profileCellIdentifier, for: indexPath) as? ProfileCell else {
            return UICollectionViewCell()
        }
        
        cell.setImage(imageName: profiles[indexPath.item].imageName)
        cell.setName(name: profiles[indexPath.item].name)
        cell.setHashtag(hashtag: profiles[indexPath.item].hashtag)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MyConstants.bannerHeaderIdentifier, for: indexPath) as? BannerHeaderView else {
            return UICollectionReusableView()
        }
        
//        header.setImage(imageName: headers[indexPath.item].imageName)
//        header.setTitle(title: headers[indexPath.item].title)
//        header.setInfo(info: headers[indexPath.item].info)
        
        return header
    }
    
}
