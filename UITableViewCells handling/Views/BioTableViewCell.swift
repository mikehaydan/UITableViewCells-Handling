//
//  BioTableViewCell.swift
//  UITableViewCells handling
//
//  Created by Mykhailo Haidan on 10.09.2021.
//

import UIKit

final class BioTableViewCell: BaseReusableTableViewCell {

    // MARK: - Private Properties

    private lazy var bioLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        contentView.addSubview(label)

        return label
    }()

    private lazy var bioTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = "BIO"
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
        let model = model as! BioTableViewCellModel

        bioLabel.text = model.bio
    }

    // MARK: - Private

    private func setupView() {
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        bioTitle.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            bioTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            bioTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            bioTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
        ])

        NSLayoutConstraint.activate([
            bioLabel.topAnchor.constraint(equalTo: bioTitle.bottomAnchor, constant: 10),
            bioLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            bioLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            bioLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5),
        ])
    }
}
