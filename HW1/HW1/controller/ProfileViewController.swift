//
//  ProfileViewController.swift
//  HW1
//
//  Created by Haeseok Lee on 2020/10/11.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var greetingLabel: UILabel!
    
    var part :String?
    var name :String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        partLabel.text = part
        if let safeName = name {
            greetingLabel.text = "\(safeName)님 안녕하세요~~^^"
        }
        
    }
    

    @IBAction func loginButtonPressed(_ sender: UIButton) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
