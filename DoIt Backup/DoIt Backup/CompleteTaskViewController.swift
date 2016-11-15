//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Mickey Sonneveld on 12/11/16.
//  Copyright © 2016 Mickey Sonneveld. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    var previousVC = TasksViewController()
    
    @IBAction func CompleteTapped(_ sender: Any) {
        
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskLabel.text = task.name
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        }
        else{
            
            taskLabel.text = task.name
        }
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
