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
        // Do any additional setup after loading the view.
    }
    

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
}

extension LoginViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 입력 시작");
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 입력 끝");
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
