//
//  ViewController4.swift
//  ClassmateAppChen
//
//  Created by ALVIN CHEN on 10/16/23.
//

import UIKit

class ViewController4: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate{

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var delegate: ViewController!
    var students3 : [Student] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }
 
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! PleaseWorkCell
        
        cell.firstNameOutlet.text = students3[indexPath.row].firstName
        cell.lastNameOutlet.text = students3[indexPath.row].lastName
        cell.ratingOutlet.text = "\(students3[indexPath.row].rating)"
        cell.etc.text = students3[indexPath.row].situation

        return cell
    }
    
    
}

