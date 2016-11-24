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

        guard var state = state else {
            return TodoListState()
        }
        
        if let insertAction = action as? InsertTaskAction {
            state.todoList.appendItem(todo: insertAction.todo)
        } else if let deleteAction = action as? DeleteTaskAction {
            state.todoList.removeItem(todoID: deleteAction.identifier)
        }
        
        return state
    }
}
