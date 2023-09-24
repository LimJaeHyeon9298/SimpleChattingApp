//
//  WelcomeViewController.swift
//  ChattingApp
//
//  Created by 임재현 on 2023/09/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        animationTitle()
    }
    
    func animationTitle() {
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText =  K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    
    
}