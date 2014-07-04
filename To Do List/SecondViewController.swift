//
//  SecondViewController.swift
//  To Do List
//
//  Created by Sriram Srinivasan on 02/07/2014.
//  Copyright (c) 2014 Amsphere. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
  
    @IBOutlet var txtTask:UITextField!
    @IBOutlet var textDesc:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    
    @IBAction func addTask(sender:UIButton)
    {
       taskMgr.addTask(txtTask.text, tDesc:textDesc.text)
        
        txtTask.text=""
        textDesc.text=""
        self.view.endEditing(true)
        
        self.tabBarController.selectedIndex=0
    }
    
    //Touches
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        self.view.endEditing(true)
    }
    
     func textFieldShouldReturn(textField: UITextField!) -> Bool
     {
        textField .resignFirstResponder()
       
        return true
    }


}

