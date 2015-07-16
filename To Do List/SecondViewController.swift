//
//  SecondViewController.swift
//  To Do List
//
//  Created by Brad Gray on 7/14/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var addItem: UITextField!
    
    
    @IBAction func addItemButton(sender: UIButton) {
    toDoList.append(addItem.text)
        
        addItem.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    
    }
    
    
      override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textfield: UITextField!) -> Bool {
        
        addItem.resignFirstResponder()
        return true
    }
    
    
}

