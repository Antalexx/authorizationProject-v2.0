//
//  WelcomeView.swift
//  authorizationProject
//
//  Created by Alexander Antonenko on 26.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var lableWelcomeView: UILabel!
    
    var lableW = ""
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func exit() {
        dismiss(animated: true)
    }
    private func setup() {
        view.addVertikalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        lableWelcomeView.text = lableW
    }
}

//Gradient
extension UIView {
    func addVertikalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}


