//
//  SignupViewController.swift
//  PhotoApp
//
//  Created by Samuel_Lu on 2022/11/8.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    var signupPresenter: SignupPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if signupPresenter == nil {
            let signupModelValidator = SignupFormModelValidator()
            let webservice = SignupWebService(urlString: SignupConstants.signupURLString)
            
            signupPresenter = SignupPresenter(formModelValidator: signupModelValidator, webservice: webservice, delegate: self)
        }
    }
    
    @IBAction func signupButtontapped(_ sender: UIButton) {
        let signupFormModel = SignupFormModel(firstName: firstNameTextField.text ?? "", lastName: lastNameTextField.text ?? "", email: emailTextField.text ?? "", password: passwordTextField.text ?? "", repeatPassword: repeatPasswordTextField.text ?? "")
        signupPresenter?.processUserSignup(formModel: signupFormModel)
    }

}

extension SignupViewController: SignupViewDelegateProtocol {
    func successfullSignup() {
        let alert = UIAlertController(title: "Success", message: "Your request success", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { _ in
            if let successVC = self.storyboard?.instantiateViewController(withIdentifier: "successStoryboard") {
                successVC.modalPresentationStyle = .fullScreen
                self.present(successVC, animated: true)
            }
            
        }
        alert.addAction(action)
        
        DispatchQueue.main.async {
            alert.view.accessibilityIdentifier = "successAlertDialog"
            action.accessibilityIdentifier = "successOkButton"
            self.present(alert, animated: true)
        }
    }
    
    func errorHandler(error: SignupError) {
        let alert = UIAlertController(title: "Error", message: "Your request could not be processed at this time", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        DispatchQueue.main.async {
            alert.view.accessibilityIdentifier = "errorAlertDialog"
            self.present(alert, animated: true)
        }
    }
}
