//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Daniel Correa on 10/12/16.
//  Copyright © 2016 Repel. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addedTapped(_ sender: AnyObject) {
        //create a task from the outlet infomation
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop Back
        
        navigationController!.popViewController(animated: true)
        
    }
}
