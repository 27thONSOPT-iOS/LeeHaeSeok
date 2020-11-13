//
//  ViewController.swift
//  HW3
//
//  Created by Haeseok Lee on 2020/11/05.
//


import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    @IBOutlet weak var headerView: UIView!
    
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
    }

}

extension ProfileViewController: UICollectionViewDataSource {
    
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
        
        return header
    }
    
}


extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
    
    
}


extension ProfileViewController {

    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("드래그 시작")
        headerView.isHidden = true
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("드래그 끝")
        headerView.isHidden = false
    }
}
