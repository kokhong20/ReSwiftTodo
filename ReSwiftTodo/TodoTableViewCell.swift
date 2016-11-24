//
//  TodoTableViewCell.swift
//  ReSwiftTodo
//
//  Created by Hong on 23/11/16.
//  Copyright © 2016 Hong. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    var identifier: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func deleteButtonClicked(_ sender: Any) {
        store.dispatch(DeleteTaskAction(identifier: identifier!))
    }
}
