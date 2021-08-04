//
//  ViewController.swift
//  Shortly-app
//
//  Created by KarimAhmed on 01/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pssswordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var noAccountButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginStackView: UIStackView!
    @IBOutlet weak var confirmPasswordHeight: NSLayoutConstraint!
    @IBOutlet weak var loginButtonHeight: NSLayoutConstraint!
    @IBOutlet weak var registerButtonHeight: NSLayoutConstraint!
    @IBOutlet weak var noAccountButtonHeight: NSLayoutConstraint!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButtonHeight.constant = 0
        confirmPasswordHeight.constant = 0
        loginButton.clipsToBounds = true
        registerButton.clipsToBounds = true
        noAccountButton.clipsToBounds = true
        loginStackView.sizeToFit()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)


    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {

        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        nextViewController.modalPresentationStyle = .fullScreen

        self.present(nextViewController, animated:true, completion:nil)

    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func noAccountTapped(_ sender: UIButton) {
        noAccountButtonHeight.constant = 0
        loginButtonHeight.constant = 0
        registerButtonHeight.constant = 50
        confirmPasswordHeight.constant = 40
    }
    
    @objc func keyboardWillShow(notification:NSNotification) {

        guard let userInfo = notification.userInfo else { return }
        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)

        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height 
        scrollView.contentInset = contentInset
    }

    @objc func keyboardWillHide(notification:NSNotification) {

        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }

    
    
}

