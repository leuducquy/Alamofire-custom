//
//  SignInViewControllerViewController.swift
//  AlamofireCustom
//
//  Created by Quy on 1/10/17.
//  Copyright © 2017 Quy. All rights reserved.
//

import UIKit

class SignInViewControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
          // Do any additional setup after loading the view.
              
    }
   
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passworkdtextField: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func applyMutliplication(value: Int, multFunction: (Int) -> Int) -> Int {
        return multFunction(value)
    }
    // Calling the method and execute closure
    
    @IBAction func signInButtonClicked(_ sender: Any) {
        let params = NSMutableDictionary.initParam()
        params.setObject(self.userNameTextField.text!, forKey: "account" as NSCopying)
         params.setObject(self.passworkdtextField.text!, forKey: "password" as NSCopying)
        
        QuyAlamofire.requestPost(url: WF_URL_SIGN_IN, params: params.toDictionary()) { (response) in
            if(response.object(forKey: "status") as! String == "OK"){
                        self.performSegue(withIdentifier: "pushToDetail", sender: self)
                }
            }
         print("synconize")
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
