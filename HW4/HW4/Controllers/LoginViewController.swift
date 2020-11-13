//
//  LoginViewController.swift
//  HW4
//
//  Created by Haeseok Lee on 2020/11/13.
//

import UIKit

class LoginViewController: UIViewController{

    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partTextField.delegate = self
        nameTextField.delegate = self
    }

}

extension LoginViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 입력 시작");
        self.view.transform = CGAffineTransform(translationX: 0, y: -100)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.view.transform = CGAffineTransform(translationX: 0, y: 0)
        print("텍스트 입력 끝");
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        partTextField.endEditing(true)
        nameTextField.endEditing(true)
        self.view.transform = CGAffineTransform(translationX: 0, y: 0)
        
        return true
    }
}
