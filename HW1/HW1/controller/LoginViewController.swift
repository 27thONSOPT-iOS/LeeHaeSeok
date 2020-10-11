//
//  ViewController.swift
//  HW1
//
//  Created by Haeseok Lee on 2020/10/11.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var partLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "loginToProfile", sender: self)
        
    }
    
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "loginToSignUp", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "loginToProfile" {
            let destinationVC = segue.destination as! ProfileViewController
            destinationVC.name = nameLabel.text
            destinationVC.part = partLabel.text
        }
    }
}

