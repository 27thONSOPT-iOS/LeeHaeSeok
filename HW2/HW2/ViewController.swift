//
//  ViewController.swift
//  HW2
//
//  Created by Haeseok Lee on 2020/10/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var topBtn: UIButton? = UIButton(type: .custom)
    
    var isHidden: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        floatingButton()
        scrollView.delegate = self
    }
    
    func floatingButton() {
        if let safeTopBtn = topBtn {
            safeTopBtn.frame = CGRect(x:300, y:600, width: 50, height: 50)
            safeTopBtn.setTitle("Top", for: .normal)
            safeTopBtn.backgroundColor = #colorLiteral(red: 0.9132102728, green: 0.8099125028, blue: 0, alpha: 1)
            safeTopBtn.clipsToBounds = true
            safeTopBtn.layer.cornerRadius = 25
            safeTopBtn.layer.borderColor = #colorLiteral(red: 0.9132102728, green: 0.8099125028, blue: 0, alpha: 1)
            safeTopBtn.layer.borderWidth = 1.0
            safeTopBtn.layer.isHidden = isHidden
            safeTopBtn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            view.addSubview(safeTopBtn)
        }
        
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.y <= 600) {
            isHidden = true
        }
        else {
            isHidden = false
        }
        
        if let safeTopBtn = topBtn {
            safeTopBtn.layer.isHidden = isHidden
        }
        
    }
    
    @objc func buttonAction (sender: UIButton!) {
        scrollView.setContentOffset(.zero, animated: true)
    }
    
}

