//
//  PersonListController.swift
//  Persons List
//
//  Created by Егор Астахов on 29.10.2021.
//

import UIKit

class PersonListController: UITableViewController {
    
    var personsList = Person.getContactsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    // MARK: - Настройка строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personListCell", for: indexPath)
        
        let person = personsList[indexPath.row]
        cell.textLabel?.text = "\(person.firstName) \(person.lastName)"

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
