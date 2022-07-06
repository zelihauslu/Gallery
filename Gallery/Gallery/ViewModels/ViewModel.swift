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
}
