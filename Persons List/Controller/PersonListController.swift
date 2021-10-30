//
//  PersonListController.swift
//  Persons List
//
//  Created by Егор Астахов on 29.10.2021.
//

import UIKit

class PersonListController: UITableViewController {
    
    var personsList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    // MARK: - Настройка строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstPersonListCell", for: indexPath)
        
        let person = personsList[indexPath.row]
        cell.textLabel?.text = person.fullName

        return cell
    }
    
    // MARK: - Передача данных с помощью segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? InfoListController
        // получаем index path выбранной ячейки
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        // Передаем данные на второй вью контроллер в переменную person
        viewController?.person = personsList[indexPath.row]
    }
}
