//
//  DataAddViewController.swift
//  BackDataPassingUsingClosureWay2
//
//  Created by Mac on 02/05/23.
//

import UIKit

class DataAddViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextFiled: UITextField!
    @IBOutlet weak var rollNoTextField: UITextField!
    var backDatapassing:((Student)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
    }
    

    @IBAction func dataAddButton(_ sender: Any) {
        guard let backData = backDatapassing else {
            print("Check Method")
            return
        }
        guard let firstNamen = firstNameTextField.text,
              let lastNamen = lastNameTextFiled.text,
              let rollNon = rollNoTextField.text?.codingKey.intValue
                else
        {
            let uiAlertController = UIAlertController(title: "Empty Text", message: "Enter Information About It", preferredStyle: .alert)
            let uialertAction = UIAlertAction(title: "Ok", style: .default)
            uiAlertController.addAction(uialertAction)
            present(uiAlertController, animated: true)
            print("Enter Data")
            return
        }
        backData(Student(firstName: firstNamen, lastName: lastNamen, rollNo: rollNon))
        
        navigationController?.popViewController(animated: true)
    }
    

}
