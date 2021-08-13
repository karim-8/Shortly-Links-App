//
//  ViewController.swift
//  Shortly-app
//
//  Created by KarimAhmed on 01/08/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pssswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var noAccountButton: UIButton!
    @IBOutlet weak var alreadyRegisterButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var credentialsStackView: UIStackView!
    @IBOutlet weak var confirmPasswordHeight: NSLayoutConstraint!
    @IBOutlet weak var loginButtonHeight: NSLayoutConstraint!
    @IBOutlet weak var registerButtonHeight: NSLayoutConstraint!
    @IBOutlet weak var noAccountButtonHeight: NSLayoutConstraint!
    @IBOutlet weak var alreadyButtonHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupViewWithKeyboard()
    }
    
    func setupUI() {
        loginButton.clipsToBounds = true
        registerButton.clipsToBounds = true
        noAccountButton.clipsToBounds = true
        alreadyRegisterButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 10
        noAccountButton.layer.cornerRadius = 10
        registerButton.layer.cornerRadius = 10
        registerButtonHeight.constant = 0
        confirmPasswordHeight.constant = 0
        alreadyButtonHeight.constant = 0
        credentialsStackView.sizeToFit()
        credentialsStackView.layoutIfNeeded()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("...(loginButtonTapped) Tapped")
        
        //Call Api the 1- check success 2- go Login
        
        //        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        //        nextViewController.modalPresentationStyle = .fullScreen
        //        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        print("...(registerButtonTapped) Tapped")
        
    }
    
    @IBAction func noAccountTapped(_ sender: UIButton) {
        print("...(noAccountTapped) Tapped")
        noAccountButtonHeight.constant = 0
        loginButtonHeight.constant = 0
        registerButtonHeight.constant = 40
        confirmPasswordHeight.constant = 40
        alreadyButtonHeight.constant = 40
        
        
    }
    
    @IBAction func alreadyRegisterButtonTapped(_ sender: UIButton) {
        print("...(alreadyRegisterButtonTapped) Tapped")
        confirmPasswordHeight.constant = 0
        loginButtonHeight.constant = 40
        registerButtonHeight.constant = 0
        alreadyButtonHeight.constant = 0
        noAccountButtonHeight.constant = 40
        
        
    }
    
}

extension LoginViewController {
    
    func setupViewWithKeyboard () {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc func keyboardWillShow(notification:NSNotification) {
        guard let userInfo = notification.userInfo else { return }
        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = 50
        scrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification) {
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }
    
}

