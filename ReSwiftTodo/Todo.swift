//
//  Todo.swift
//  ReSwiftTodo
//
//  Created by Hong on 23/11/16.
//  Copyright © 2016 Hong. All rights reserved.
//

import Foundation

struct Todo {
    
    let id: String = UUID().uuidString
    var title: String
    var isComplete: Bool
    
    init(title: String, isComplete: Bool) {
        self.title = title
        self.isComplete = isComplete
    }
}
