//
//  TodoStore.swift
//  ReSwiftTodo
//
//  Created by Hong on 23/11/16.
//  Copyright © 2016 Hong. All rights reserved.
//

import Foundation
import ReSwift

typealias TodoListStore = Store<TodoListState>

func todoListStore() -> TodoListStore {
    return TodoListStore(reducer: TodoListReducer(), state: TodoListState(todoList: TodoList.sampleDataList()))
}
