//
//  UserTypeSelection.swift
//  SchoolOfHeroes
//
//  Created by Andrii Pikus on 15.11.2024.
//


import Foundation

enum UserTypeSelection {
    case speaker
    case child
}

class RegistrationViewModel: ObservableObject {
    private let coordinator: RegistrationCoordinatorProtocol
    
    init(coordinator: RegistrationCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func selectUserType(_ type: UserTypeSelection) {
        coordinator.navigateToNextScreen(for: type)
    }
}
