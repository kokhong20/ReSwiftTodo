//
//  TodoAction.swift
//  ReSwiftTodo
//
//  Created by Hong on 23/11/16.
//  Copyright © 2016 Hong. All rights reserved.
//

import Foundation
import ReSwift

struct InsertTaskAction: Action {
    let todo: Todo
    
    var name: String { return "Insert Task" }
}
