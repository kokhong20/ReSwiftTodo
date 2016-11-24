//
//  ViewController.swift
//  ReSwiftTodo
//
//  Created by Hong on 23/11/16.
//  Copyright © 2016 Hong. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, UITableViewDataSource, StoreSubscriber {
    
    var data = [Todo]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        store.subscribe(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        store.unsubscribe(self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuse") as? TodoTableViewCell else {
            return UITableViewCell()
        }
        let todo = data[indexPath.row]
        
        cell.todoLabel.text = todo.title
        cell.identifier = todo.id
        return cell
    }
    
    func newState(state: TodoListState) {
        data = state.todoList.items
        tableView.reloadData()
    }
    
}
