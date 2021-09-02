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
        
        title = "Рецепты"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tabBarItem.image = UIImage(systemName: "circle")
        tabBarItem.title = "Рецепты"
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! RecipeCell
        cell.categoryImageView.setImageColor(color: .systemRed)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        present(RecipeDetailsViewController(), animated: true)
    }
}

extension MainTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.frame.width * 0.4
    }
}
