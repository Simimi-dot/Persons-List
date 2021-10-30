//
//  TabBarController.swift
//  Persons List
//
//  Created by Егор Астахов on 30.10.2021.
//

import UIKit

class TabBarController: UITabBarController {

    let persons = Person.getContactsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let firstContactsList = viewControllers?.first as! PersonListController
        let secondContactsList = viewControllers?.last as! SecondPersonListController
        
        firstContactsList.personsList = persons
        secondContactsList.personList = persons
        
    }

}
