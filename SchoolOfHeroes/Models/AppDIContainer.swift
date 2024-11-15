//
//  AppDIContainer.swift
//  SchoolOfHeroes
//
//  Created by Andrii Pikus on 15.11.2024.
//


import Swinject

class AppDIContainer {
    let container: Container
    
    init() {
        container = Container()
        setupDependencies()
    }
    
    private func setupDependencies() {
        // Реєстрація координатора
        container.register(RegistrationCoordinatorProtocol.self) { _ in
            RegistrationCoordinator()
        }

        // Реєстрація ViewModel з координатором як залежністю
        container.register(RegistrationViewModel.self) { resolver in
            let coordinator = resolver.resolve(RegistrationCoordinatorProtocol.self)!
            return RegistrationViewModel(coordinator: coordinator)
        }
    }
    
    // Метод для отримання ViewModel
    func resolveRegistrationViewModel() -> RegistrationViewModel {
        return container.resolve(RegistrationViewModel.self)!
    }
}
