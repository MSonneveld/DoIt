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
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func addTapped(_ sender: Any) {
        //task from outlet
        
        let task = Task()
        if taskNameTextField.text != nil {
            task.name = taskNameTextField.text!
            task.important = importantSwitch.isOn
            
            previousVC.tasks.append(task)
            previousVC.tableView.reloadData()
            navigationController!.popViewController(animated: true)
            print("Done")
        }
        
    }
    
    
    
    
    
}
























