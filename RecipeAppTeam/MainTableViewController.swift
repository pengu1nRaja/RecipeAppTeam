//
//  MainTableViewController.swift
//  RecipeAppTeam
//
//  Created by PenguinRaja on 01.09.2021.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    private let reuseIdentifier = "recipeCell"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "RecipeCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! RecipeCell

        return cell
    }
}

extension MainTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
