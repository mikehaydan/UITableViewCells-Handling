//
//  ProfileTableViewCellItems.swift
//  UITableViewCells handling
//
//  Created by Mykhailo Haidan on 10.09.2021.
//

import UIKit

struct NameTableViewCellModel: ReusableItem {

    // 1
    var reuseIdentifier: String {
        return String(describing: NameTableViewCell.self)
    }

    // 2
    let firstName: String
    let lastName: String
}

struct ImageTableViewCellModel: ReusableItem {

    // 1
    var reuseIdentifier: String {
        return String(describing: ImageTableViewCell.self)
    }

    // 2
    let image: UIImage
}

struct BioTableViewCellModel: ReusableItem {

    // 1
    var reuseIdentifier: String {
        return String(describing: BioTableViewCell.self)
    }

    // 2
    let bio: String
}
