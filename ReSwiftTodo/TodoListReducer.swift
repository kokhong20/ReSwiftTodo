//
//  TodoListReducer.swift
//  ReSwiftTodo
//
//  Created by Hong on 23/11/16.
//  Copyright © 2016 Hong. All rights reserved.
//

import Foundation
import ReSwift

class TodoListReducer: Reducer {
    func handleAction(action: Action, state: TodoListState?) ->  TodoListState {
        guard let action = action as? InsertTaskAction else {
            return TodoListState()
        }
        
        guard var state = state else {
            return TodoListState()
        }
        
        state.todoList.appendItem(todo: action.todo)
        
        return state
    }
}
