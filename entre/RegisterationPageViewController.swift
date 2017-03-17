//
//  RegisterationPageViewController.swift
//  entre
//
//  Created by Mac on 3/14/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
//import MapKit
//import CoreLocation

class RegisterationPageViewController: UIViewController, ShowMapViewControllerDelegate {


    @IBOutlet weak var userFirstName: UITextField!
    @IBOutlet weak var userLastName: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var userZipcode: UITextField!
    var users = [["Sylvester", 95002], ["Tom", 95050], ["Jerry", 95110],["Nibbles", 95123], ["La Petite Ballerina", 95111]]
//    var users = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //validation check
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let FirstName = userFirstName.text
//        let LastName = userLastName.text
//        let Email = userEmail.text
//        let Password = userPassword.text
//        let Password_confirm = confirmPassword.text
        let Zipcode = userZipcode.text
        
        
// ----------- Future To-do list ------------- add validation for if zipcode is not a defined zipcode
//        if (FirstName!.isEmpty || Zipcode!.isEmpty){
//            displayAlert(userMessage: "First name and ZIP Code are required!")
//            return
//        }
        users.append([FirstName!, Zipcode!])
        print("new users list is \(users)")
//        performSegue(withIdentifier: "ShowMap", sender: sender)
        
//        if (FirstName!.isEmpty || LastName!.isEmpty || Email!.isEmpty || Password!.isEmpty || Password_confirm!.isEmpty){
//            displayAlert(userMessage: "All fields are required!")
//            return
//        }
//            
//        else if(Password != Password_confirm){
//            displayAlert(userMessage: "Password do not match!")
//            return
//        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let navigationController = segue.destination as! UINavigationController
//        let ShowMapViewController = navigationController.topViewController as! ShowMapViewController
//        ShowMapViewController.delegate = self
//    }
    
    //display error messages
    func displayAlert(userMessage:String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
    }
    
    
    
    //store data on the user device
//    let defaults = UserDefaults.standard.set(FirstName, forKey: "FirstName")
    
    
}
