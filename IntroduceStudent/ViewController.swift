//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Ruth Bilaro on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var schoolNameField: UITextField!
    @IBOutlet weak var yearSegControl: UISegmentedControl!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var petsSwitch: UISwitch!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
       // Lets us choose the title we have selected from the segmented control
       // In our example that is whether it is first, second, third or fourth
    let year = yearSegControl.titleForSegment(at: yearSegControl.selectedSegmentIndex)
    // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
    let introduction = "My name is \(firstNameField.text!) \(lastNameField.text!) and I attend \(schoolNameField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(petsSwitch.isOn) that I want more pets."
    // Creates the alert where we pass in our message, which our introduction.
    let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
    // A way to dismiss the box once it pops up
    let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
    // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
        
    
       print(introduction)
        
    }
    
}
        
        
        
       
    


