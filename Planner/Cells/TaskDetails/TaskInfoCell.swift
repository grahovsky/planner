//
//  TaskInfoCell.swift
//  Planner
//
//  Created by Konstantin on 24/11/2018.
//  Copyright © 2018 Tim. All rights reserved.
//

import UIKit

class TaskInfoCell: UITableViewCell {

    @IBOutlet weak var textTaskInfo: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
