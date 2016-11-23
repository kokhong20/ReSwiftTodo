//
//  TodoList.swift
//  ReSwiftTodo
//
//  Created by Hong on 23/11/16.
//  Copyright © 2016 Hong. All rights reserved.
//

import Foundation

struct TodoList {
    static var emptyList: TodoList {
        return TodoList()
    }
    
    var title: String?
    var items: [Todo]
    
    mutating func appendItem(todo: Todo) {
        items.append(todo)
    }
    
    init() {
        self.items = []
    }
    
    init(title: String, items: [Todo]) {
        self.title = title
        self.items = items
    }
    
    static func sampleDataList() -> TodoList {
        
        let toDos = [
            Todo(title: "create a list", isComplete: false),
            Todo(title: "Sample list 2", isComplete: false),
            Todo(title: "Sample list 3", isComplete: false)
        ]
        
        return TodoList(title: "Welcome!", items: toDos)
    }

}
