//
//  ImageTableViewCell.swift
//  UITableViewCells handling
//
//  Created by Mykhailo Haidan on 10.09.2021.
//

import UIKit

final class ImageTableViewCell: BaseReusableTableViewCell {

    // MARK: - Public Properties

    // MARK: - Private Properties

    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 40
        imageView.contentMode = .scaleAspectFill

        contentView.addSubview(imageView)

        return imageView
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
        let model = model as! ImageTableViewCellModel

        profileImageView.image = model.image
    }

    // MARK: - Private

    private func setupView() {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            profileImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 80),
            profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            profileImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        let heightConstraint = profileImageView.heightAnchor.constraint(equalToConstant: 80)
        heightConstraint.priority = UILayoutPriority(900)
        heightConstraint.isActive = true
    }

}
