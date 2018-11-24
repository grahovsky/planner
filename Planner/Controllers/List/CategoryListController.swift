//
//  CategoryListController.swift
//  Planner
//
//  Created by Konstantin on 24/11/2018.
//  Copyright © 2018 Tim. All rights reserved.
//

import UIKit

class CategoryListController: UIViewController {

    let categoryDAO = CategoryDaoDbImpl.current
    
    var selectedCategory:Category! // текущая категория задачи
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

// MARK: tableView

extension CategoryListController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryDAO.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellCategory", for: indexPath) as? CategoryListCell else { fatalError("fatal erroe with cell") }
        
        let category = categoryDAO.items[indexPath.row]
        
        if selectedCategory != nil && selectedCategory == category {
            cell.buttonCheckCategory.setImage(UIImage(named: "check_green"), for: .normal)
        } else {
            cell.buttonCheckCategory.setImage(UIImage(named: "check_gray"), for: .normal)
        }
        
        cell.labelCategoryName.text = category.name
        
        return cell
        
    }
    
    
}