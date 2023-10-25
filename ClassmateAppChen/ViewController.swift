//
//  ViewController.swift
//  ClassmateAppChen
//
//  Created by ALVIN CHEN on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    var students2: [Student] = [

            Student(firstName: "Brenden", lastName: "Wydra", rating: Rating.peak_mid, situation: "cool dude"),

            Student(firstName: "Noel", lastName: "Ortiz", rating: Rating.below_mid, situation: "probably selling drugs"),

            Student(firstName: "Jake", lastName: "Kenefick", rating: Rating.mid, situation: "being a fake life guard"),

            Student(firstName: "Oliver", lastName: "Murray", rating: Rating.mid, situation: "Not enough info"),

            Student(firstName: "Tyler", lastName: "Mok", rating: Rating.mid, situation: "In Seaver's class"),

            Student(firstName: "Stanislav", lastName: "Stajila", rating: Rating.peak_mid, situation: "doing his best"),

            Student(firstName: "Andrew", lastName: "Kaiser", rating: Rating.mid, situation: "Skipping All About Me"),

            Student(firstName: "Mikaela", lastName: "Wallen", rating: Rating.mid, situation: "Winning"),

            Student(firstName: "Catherine", lastName: "Huseby", rating: Rating.mid, situation: "Something Something Color Guard"),

            Student(firstName: "Liam", lastName: "Cox", rating: Rating.mid, situation: "Taking a long break"),

            Student(firstName: "Annahlu", lastName: "Raclawski", rating: Rating.mid, situation: "Amurica"),

            Student(firstName: "Natalie", lastName: "DuShane", rating: Rating.mid, situation: "Idk"),

            Student(firstName: "Claire", lastName: "McGuire", rating: Rating.mid, situation: "working"),

            Student(firstName: "Olivia", lastName: "Mendez", rating: Rating.mid, situation: "preparing for her favorite holiday"),

            Student(firstName: "Avery", lastName: "McAllister", rating: Rating.mid, situation: "(I'm running out of ideas)"),

            Student(firstName: "Alvin", lastName: "Chen", rating: Rating.peak_mid, situation: "Alive"),

            Student(firstName: "Gabi", lastName: "Avila", rating: Rating.mid, situation: "watching somebody shoplift"),

            Student(firstName: "Miles", lastName: "Richmond", rating: Rating.mid, situation: "Reusing his presentation"),

            Student(firstName: "Corey", lastName: "Atkinson", rating: Rating.mid, situation: "probably Singing"),

            Student(firstName: "Mason", lastName: "Bartell", rating: Rating.mid, situation: "doing something"),

            Student(firstName: "Brian", lastName: "Wang", rating: Rating.peak_mid, situation: "broken")

        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tableAction(_ sender: UIButton) {
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    @IBAction func classmateButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segue"){
            let nvc = segue.destination as! ViewController3
            nvc.students = students2
            nvc.delegate = self
        }
        if(segue.identifier == "segue2"){
            let nvc = segue.destination as! ViewController4
            nvc.delegate = self
            nvc.students3 = students2
        }
    }
    
}

