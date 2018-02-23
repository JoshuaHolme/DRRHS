//
//  ViewHomeworkTVCell.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/17/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class ViewHomeworkTVCell: UITableViewCell
{
    // MARK: - Outlets
    @IBOutlet weak var dayIndicator: UIView!
    @IBOutlet weak var classNameLbl: UILabel!
    @IBOutlet weak var dueDateLbl: UILabel!
    @IBOutlet weak var descriptionTxtView: UITextView!
    var classColor = ""
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

    }
}