//
//  TaskManager.swift
//  To Do List
//
//  Created by Rama Chandra on 02/07/2014.
//  Copyright (c) 2014 Amsphere. All rights reserved.
//

import UIKit

var taskMgr:TaskManager=TaskManager()

struct task
{
    var name="No-Name"
    var desc="No-Desc"
}

class TaskManager: NSObject {
    
   var tasks=task[]()
    
    func addTask(tName:NSString,tDesc:NSString)
    {
        tasks.append(task(name:tName,desc: tDesc))
    }
   
}
