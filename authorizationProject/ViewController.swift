//
//  ViewController.swift
//  authorizationProject
//
//  Created by Alexander Antonenko on 26.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var forgotYouPassword: UIButton!
    @IBOutlet weak var forgotYouUserName: UIButton!
    
    let user = "shikaka"
    let pass = "password"
    
    @IBAction func login() {
        let alertLogin = UIAlertController(title: "📛", message: "Ахтунг!! Введи правильно", preferredStyle: .alert)
        alertLogin.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        
        if userName.text == user && password.text == pass {
            //переход в другой экран
        }else {
            present(alertLogin, animated: true)
            userName.text = ""
            password.text = ""
            
        }
    }
    
    
    @IBAction func fypTouch() {
        let alertFyp = UIAlertController(title: "Oops!", message: "You Password is \(pass)🤬", preferredStyle: .alert)
        alertFyp.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alertFyp, animated: true)
    }
    
    
    @IBAction func fyunTouch() {
        let alertFyun = UIAlertController(title: "Oops!", message: "You User name is \(user)🤬", preferredStyle: .alert)
        alertFyun.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alertFyun, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

