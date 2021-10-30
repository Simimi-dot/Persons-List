//
//  SecondPersonListController.swift
//  Persons List
//
//  Created by Егор Астахов on 29.10.2021.
//

import UIKit

class SecondPersonListController: UITableViewController {

    var personList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    // Количество секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }
    // Что будет написано в заголовке секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }

    // Количество ячеек в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    // Наполняем ячейки данными
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondPersonListCell", for: indexPath)
        
        if indexPath.row % 2 == 0 {
            cell.textLabel?.text = personList[indexPath.section].phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        } else {
            cell.textLabel?.text = personList[indexPath.section].email
            cell.imageView?.image = UIImage(systemName: "mail")
        }
        
        return cell
    }
    
    // Включаем анимацию у ячеек
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


}
