//
//  ViewModel.swift
//  Gallery
//
//  Created by Zeliha Uslu on 6.07.2022.
//

import SwiftUI

class ViewModel: ObservableObject{
    @Published var image: UIImage?
    @Published var showPicker = false
    @Published var source : Picker.Source = .library
    
    func showPhotoPicker(){
        if source == .camera{
            if !Picker.checkPermissions(){
                print("There is no camera on this device")
                return
            }
        }
        showPicker = true
    }
}
