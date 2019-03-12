//
//  AppUser.swift
//  plushi
//
//  Created by Cameron Milliken on 3/12/19.
//  Copyright © 2019 ya boy E. All rights reserved.
//

import Foundation
import UIKit

class AppUser {
    let uuid: String
    let email: String
    let password: String
    let userName: String
    let profilePic: UIImage?
    
    init(uuid: String, email: String, password: String, userName:String, profilePic: UIImage?) {
        self.uuid = uuid
        self.email = email
        self.password = password
        self.userName = userName
        self.profilePic = profilePic
    }
    
}
