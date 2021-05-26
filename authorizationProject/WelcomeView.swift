//
//  WelcomeView.swift
//  authorizationProject
//
//  Created by Alexander Antonenko on 26.05.2021.
//

import UIKit

class WelcomeView: UIViewController {
    
    var lableW = ""
    @IBOutlet weak var lableWelcomeView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lableWelcomeView.text = lableW
    }
    
    @IBAction func exit() {
        dismiss(animated: true)
    }
}


