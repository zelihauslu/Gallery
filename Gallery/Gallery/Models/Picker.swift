//
//  Picker.swift
//  Gallery
//
//  Created by Zeliha Uslu on 6.07.2022.
//

import UIKit

enum Picker {
    enum Source: String{
        case library, camera
    }
    
    static func checkPermissions() -> Bool {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            return true
        } else {
            return false
        }
    }
}

