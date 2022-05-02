//
//  GreetingConfigurate.swift
//  Viper
//
//  Created by Вячеслав Квашнин on 02.05.2022.
//

protocol GreetingConfigurateProtocol {
    func configure(with view: GreetingViewController)
}

class GreetingConfigurate: GreetingConfigurateProtocol {
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
