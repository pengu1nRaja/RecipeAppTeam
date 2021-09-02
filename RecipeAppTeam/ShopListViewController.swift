//
//  ShopListViewController.swift
//  RecipeAppTeam
//
//  Created by Dmitry on 02.09.2021.
//

import UIKit

struct ShopListItem {
    let title: String
}

class ShopListViewController: UITableViewController {
    
    private let reuseIdentifier = "shopCell"
    private var shopListItems = [
        ShopListItem(title: "Potato"),
        ShopListItem(title: "Orange"),
        ShopListItem(title: "Apple")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addNewItem)
        )
    }
    
    @objc private func addNewItem() {
        let alertController = UIAlertController(title: "Add new stuff",
                                                message: nil,
                                                preferredStyle: .alert)
        alertController.addTextField()
        
        let addAction = UIAlertAction(title: "Add", style: .default) { [weak alertController] _ in
            guard let stuff = alertController?.textFields?.first?.text else { return }
            let shopStuff = ShopListItem(title: stuff)
            self.shopListItems.append(shopStuff)
            
            let cellIndex = IndexPath(row: self.shopListItems.count - 1, section: 0)
            self.tableView.insertRows(at: [cellIndex], with: .automatic)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(addAction)
        alertController.addAction(cancel)
        present(alertController, animated: true)
    }
    
}

//MARK: - UITableViewDataSource
extension ShopListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shopListItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        let item = shopListItems[indexPath.row]
        cell.textLabel?.text = item.title
        return cell
    }
}
