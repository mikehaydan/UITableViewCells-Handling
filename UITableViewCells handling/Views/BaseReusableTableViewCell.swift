//
//  BaseReusableTableViewCell.swift
//  UITableViewCells handling
//
//  Created by Mykhailo Haidan on 10.09.2021.
//

import UIKit

class BaseReusableTableViewCell: UITableViewCell {

    func setup(with model: ReusableItem) {
        precondition(false, "Has to be overridden")
    }
}
