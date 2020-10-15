//
//  TableViewCell.swift
//  BinaryCounter
//
//  Created by Dathan Wong on 10/15/20.
//  Copyright © 2020 Dathan Wong. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var delegate: MyCellDelegate?
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func subtractClicked(_ sender: UIButton) {
        delegate?.subValue(value: Int(numberLabel.text!) ?? 0)
    }
    @IBAction func addClicked(_ sender: UIButton) {
        delegate?.addValue(value: Int(numberLabel.text!) ?? 0)
    }
    
}
