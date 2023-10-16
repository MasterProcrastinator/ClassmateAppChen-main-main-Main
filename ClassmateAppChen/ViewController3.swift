//
//  ViewController3.swift
//  ClassmateAppChen
//
//  Created by ALVIN CHEN on 10/12/23.
//

import UIKit

class ViewController3: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstTextfield: UITextField!
    
    @IBOutlet weak var lastTextField: UITextField!
    
    @IBOutlet weak var statusTextField: UITextField!
    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    var delegate: ViewController!
    
    var index : Int = 0
    
    var students : [Student] = []
    
    
    
    override func viewDidLoad() {
        firstTextfield.delegate = self
        lastTextField.delegate = self
        statusTextField.delegate = self
        super.viewDidLoad()

        students.sort(by: { $0.firstName < $1.firstName })
        index = 0
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status or Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
    }
        

     
    
    
    @IBAction func nextAction(_ sender: UIButton) {
        if(index<students.count-1){
            index+=1
        }
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status or Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
    }
    
    
    @IBAction func backAction(_ sender: UIButton) {
        if(index>0){
            index = index - 1
        }
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status or Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
    }
    
    @IBAction func sortAction(_ sender: UIButton) {
        students.sort(by: { $0.firstName < $1.firstName })
        index = 0
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status or Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
    }
    
    
    @IBAction func addAction(_ sender: UIButton) {
        var s1 = Student(firstName: firstTextfield.text!, lastName: lastTextField.text!, rating: .not_og, situation: statusTextField.text!)
        
        students.append(s1)
        delegate.students2 = students
        firstTextfield.resignFirstResponder()
        lastTextField.resignFirstResponder()
        statusTextField.resignFirstResponder()
        students.sort(by: { $0.firstName < $1.firstName })
        index = 0
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status or Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
    }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstTextfield.resignFirstResponder()
        lastTextField.resignFirstResponder()
        statusTextField.resignFirstResponder()
        return true
    }
    
    //
    
    
    

}
