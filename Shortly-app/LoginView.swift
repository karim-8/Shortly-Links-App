//
//  LoginView.swift
//  Shortly-app
//
//  Created by KarimAhmed on 02/08/2021.
//

import UIKit

class LoginView: UIView {
 
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let view = Bundle.main.loadNibNamed("LoginView", owner: self, options: nil)![0] as! UIView
        view.frame = self.bounds
        addSubview(view)
    }
}
