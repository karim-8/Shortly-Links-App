//
//  HomeViewController.swift
//  Shortly-app
//
//  Created by KarimAhmed on 03/08/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var titleHeader: UILabel!
    @IBOutlet weak var pageDescription: UILabel!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var linkTextField: UITextField!
    @IBOutlet weak var shapeHeight: NSLayoutConstraint!
    @IBOutlet weak var bottomLinkTextFieldHeight: NSLayoutConstraint!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  shapeHeight.constant = 0
      //  bottomLinkTextFieldHeight.constant = 0
      //  bottomView.backgroundColor = .clear
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        print("Hereeee")
        shapeHeight.constant = 72
        bottomLinkTextFieldHeight.constant = 40
        bottomView.backgroundColor = UIColor(red: 52, green: 42, blue: 74, alpha: 1.0)

    }
    
    
}
