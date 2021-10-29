//
//  InfoListController.swift
//  Persons List
//
//  Created by Егор Астахов on 29.10.2021.
//

import UIKit

class InfoListController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // В тайтле пишем полное имя пользователя
        self.title = person.fullName
        // Пишем номер телефона пользователя
        phoneNumberLabel.text = person.phoneNumber
        // Пишем email пользователя
        emailLabel.text = person.email
    }
    
    
    
    
}
