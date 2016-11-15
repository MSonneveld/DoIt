//
//  CreateTaskViewController.swift
//  Do It!
//
//  Created by Mickey Sonneveld on 11/11/16.
//  Copyright © 2016 Mickey Sonneveld. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func addTapped(_ sender: Any) {
        //task from outlet
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        if taskNameTextField.text != nil {
            task.name = taskNameTextField.text!
            task.important = importantSwitch.isOn
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            navigationController!.popViewController(animated: true)
            print("Done")
        }
        
    }
    
    
    
    
    
}
























