//
//  RegistrationView.swift
//  SchoolOfHeroes
//
//  Created by Andrii Pikus on 15.11.2024.
//


import SwiftUI

struct RegistrationView: View {
    @ObservedObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("LOGO")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            Button(action: {
                viewModel.selectUserType(.speaker)
            }) {
                Text("Я спікер")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                viewModel.selectUserType(.child)
            }) {
                Text("Я дитина")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.clear)
                    .foregroundColor(.blue)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 2)
                    )
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Реєстрація")
        .navigationBarBackButtonHidden(false)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        let diContainer = AppDIContainer()
        let viewModel = diContainer.resolveRegistrationViewModel()
        
        RegistrationView(viewModel: viewModel)
    }
}
