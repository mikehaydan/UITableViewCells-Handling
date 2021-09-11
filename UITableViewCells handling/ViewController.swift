//
//  ViewController.swift
//  UITableViewCells handling
//
//  Created by Mykhailo Haidan on 10.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private var profile: Profile = .example

    private var dataSource: [ReusableItem] = []

    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.dataSource = self
        view.register(NameTableViewCell.self, forCellReuseIdentifier: String(describing: NameTableViewCell.self))
        view.register(ImageTableViewCell.self, forCellReuseIdentifier: String(describing: ImageTableViewCell.self))
        view.register(BioTableViewCell.self, forCellReuseIdentifier: String(describing: BioTableViewCell.self))

        self.view.addSubview(view)

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = profile.dataSource

        setupViews()
    }

    private func setupViews() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }

}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = dataSource[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: model.reuseIdentifier, for: indexPath) as! BaseReusableTableViewCell
        cell.setup(with: model)

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
}


