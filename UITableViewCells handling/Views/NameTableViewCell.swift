//
//  NameTableViewCell.swift
//  UITableViewCells handling
//
//  Created by Mykhailo Haidan on 10.09.2021.
//

import UIKit

final class NameTableViewCell: BaseReusableTableViewCell {

    // MARK: - Public Properties

    // MARK: - Private Properties

    private lazy var firstNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        contentView.addSubview(label)

        return label
    }()

    private lazy var lastNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        contentView.addSubview(label)

        return label
    }()

    // MARK: - LifeCycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public

    override func setup(with model: ReusableItem) {
        let model = model as! NameTableViewCellModel

        firstNameLabel.text = model.firstName
        lastNameLabel.text = model.lastName
    }

    // MARK: - Private

    private func setupView() {
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            firstNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            firstNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            firstNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
        ])

        NSLayoutConstraint.activate([
            lastNameLabel.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 10),
            lastNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            lastNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            lastNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5),
        ])
    }
}
