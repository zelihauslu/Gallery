//
//  ContentView.swift
//  Gallery
//
//  Created by Zeliha Uslu on 6.07.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm : ViewModel
    var body: some View {
        NavigationView {
            VStack{
                if let image = vm.image{
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 0, height: .infinity)
                } else{
                    Image(systemName: "photo.fill")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.6)
                        .frame(width: 0, height: .infinity)
                        .padding(.horizontal)
                }
                HStack {
                    Button(action: {
                        vm.source = .camera
                        vm.showPicker = true
                    }, label: {
                        Text("Camera")
                    })
                    
                    Button(action: {
                        vm.source = .library
                        vm.showPicker = true
                    }, label: {
                        Text("Gallery")
                    })
                }
                Spacer()
            }
            .sheet(isPresented: $vm.showPicker){
                ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
            }
            .navigationTitle("My Image")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
