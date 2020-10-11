//
//  AssignViewController.swift
//  HW1
//
//  Created by Haeseok Lee on 2020/10/11.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var partLabel: UITextField!
    @IBOutlet weak var birthYearLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
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
