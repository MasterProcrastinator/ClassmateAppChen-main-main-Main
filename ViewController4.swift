//
//  ViewController4.swift
//  ClassmateAppChen
//
//  Created by ALVIN CHEN on 10/16/23.
//

import UIKit

class ViewController4: UIViewController, UITextFieldDelegate, UITableViewDataSource{

    

    var delegate: ViewController!
    var students3 : [Student] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
 
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        print("k")
        return cell
    }
    
    
}

