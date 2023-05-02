//
//  ViewController.swift
//  BackDataPassingUsingClosureWay2
//
//  Created by Mac on 02/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNamelbl: UILabel!
    @IBOutlet weak var lastNamelbl: UILabel!
    @IBOutlet weak var rollNolbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addDataButton(_ sender: Any) {
        let dataAddViewController = storyboard?.instantiateViewController(withIdentifier: "DataAddViewController") as! DataAddViewController
        dataAddViewController.backDatapassing = {
            (Student) in
            self.firstNamelbl.text = Student.firstName
            self.lastNamelbl.text = Student.lastName
            self.rollNolbl.text = Student.rollNo.description
        }
        navigationController?.pushViewController(dataAddViewController, animated: true)
    }
    
}

