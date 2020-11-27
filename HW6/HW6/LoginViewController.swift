//
//  ViewController.swift
//  semina6
//
//  Created by Haeseok Lee on 2020/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
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
    
    
    @IBAction func touchUpLogin(_ sender: Any) {
        guard let emailText = emailTextField.text, let passwordText = passwordTextField.text else {
            return
        }
        
        AuthService.shared.signIn(email: emailText, password: passwordText) { (networkResult) -> (Void) in
            switch networkResult {
            case .success(let data):
                if let data = data as? SignInData {
                    self.simpleAlert(title: "로그인 성공", message: "\(data.userName)님 로그인 성공!")
                    UserDefaults.standard.set(data.userName, forKey: "userName")
                }
                print("success")
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "로그인 실패", message: message)
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
        
    }
    
//    @IBAction func touchUpSignUp(_ sender: Any) {
//        guard let signUpViewController = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") else {return}
//                
//        self.navigationController?.pushViewController(signUpViewController, animated: true)
//        
//        //        let signUpViewController = self.storyboard?.instantiateViewController(
//        //            withIdentifier: "SignUpViewController") as! SignUpViewController
//        //
//        //        self.navigationController?.pushViewController(signUpViewController, animated: true)
//    }
    
        
        

    
}

