//
//  RegistrationCoordinatorProtocol.swift
//  SchoolOfHeroes
//
//  Created by Andrii Pikus on 15.11.2024.
//


protocol RegistrationCoordinatorProtocol {
    func navigateToNextScreen(for userType: UserTypeSelection)
}

class RegistrationCoordinator: RegistrationCoordinatorProtocol {
    func navigateToNextScreen(for userType: UserTypeSelection) {
        switch userType {
        case .speaker:
            // Логіка навігації для спікера
            print("Navigate to Speaker screen")
        case .child:
            // Логіка навігації для дитини
            print("Navigate to Child screen")
        }
    }
}
