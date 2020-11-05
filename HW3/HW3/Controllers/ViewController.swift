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
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
        Profile(imageName: "juhyeok", name: "이주혁", hashtag: "#hereis#아요#내꿈은#사과농장#ENFP"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        // Do any additional setup after loading the view.
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
}
