//
//  ToDoTableViewCell.swift
//  MyToDoWithReaml
//
//  Created by macbookviet.vn on 3/14/19.
//  Copyright © 2019 macbookviet.vn. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    private var onToggleCompleted: ((ToDoItem) -> Void)?
    private var item: ToDoItem?
    
    @IBOutlet private var label: UILabel!
    
    @IBOutlet private var button: UIButton!
    
    @IBAction private func toggleCompleted() {
        guard let item = item else {
            fatalError("Missing Todo Item")
        }
        onToggleCompleted?(item)
    }
    
    func configureWith(_ item: ToDoItem, onToggleCompleted: ((ToDoItem) -> Void)? = nil) {
        self.item = item
        self.onToggleCompleted = onToggleCompleted
        label.attributedText = NSAttributedString(string: item.text, attributes: item.isCompleted ? [.strikethroughStyle: true] : [:])
        button.setTitle(item.isCompleted ? "✔︎": "●", for: .normal)
    }
    
//    func configureWith(_ item: ToDoItem, onToggleCompleted: ((ToDoItem) -> Void)? = nil) {
//        self.item = item
//        self.onToggleCompleted = onToggleCompleted
//
//        label.attributedText = NSAttributedString(string: item.text,
//                                                  attributes: item.isCompleted ? [.strikethroughStyle: true] : [:])
//        button.setTitle(item.isCompleted ? "☑️": "⏺", for: .normal)
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
