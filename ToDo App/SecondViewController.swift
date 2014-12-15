//
//  SecondViewController.swift
//  ToDo App
//
//  Created by zeeshan sattar on 12/14/14.
//  Copyright (c) 2014 zeeshan sattar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var toDoItem: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoItems.append(toDoItem.text)
        //let fixedToDoItems = toDoItems
        
        NSUserDefaults.standardUserDefaults().setObject(toDoItems, forKey: "toDoItems")
        NSUserDefaults.standardUserDefaults().synchronize()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
    }

}

