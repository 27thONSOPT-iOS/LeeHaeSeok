//
//  ViewController.swift
//  semina6
//
//  Created by Haeseok Lee on 2020/11/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    @IBAction func touchUpSignUp(_ sender: Any) {
        guard let emailText = emailTextField.text,
              let passwordText = passwordTextField.text,
              let usernameText = usernameTextField.text else {
            return
        }
        
        AuthService.shared.signUp(email: emailText, password: passwordText, username: usernameText) { (networkResult) -> (Void) in
            switch networkResult {
            case .success(_) :
                print("success")
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "회원가입 실패", message: message)
                }
                print("requestErr");
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
        
//        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
        _ = self.navigationController?.popViewController(animated: true)
    }
    
}

