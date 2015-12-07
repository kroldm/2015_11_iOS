//
//  main.swift
//  Targil project and tasks
//
//  Created by HackerU on 07/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

protocol TaskDelegate{
    func taskStatusHasChanged(task:Task, done:Bool)
}

class Task {
    var delegate:TaskDelegate?
    var name = ""
    private var _done = false
    var done:Bool{
        get{
            return _done
        }
        set{
            _done = newValue
            self.delegate?.taskStatusHasChanged(self, done: _done)
        }
    }
}

class Project:TaskDelegate{
    var name = ""
    var listOfTasks = [Task]()
    
    func taskStatusHasChanged(task:Task, done:Bool){
        let status = task.done ? "DONE" : "IN PROGRESS"
        print("task \(task.name) is \(status)")
    }
    
    func closeProject(){
        for t in listOfTasks{
            t.delegate = nil
        }
        listOfTasks.removeAll()
    }
}

var p = Project()
p.name = "cook dinner"
let taskNames = ["choose menu", "buy", "prepare", "cook"]

for name in taskNames{
    var t = Task()
    t.name = name
    t.delegate = p
    p.listOfTasks.append(t)
}

p.listOfTasks[0].done = true


class A {
    weak var t:Task?
}



