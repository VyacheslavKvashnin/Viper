//
//  GreetingPresenter.swift
//  Viper
//
//  Created by Вячеслав Квашнин on 02.05.2022.
//

struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    unowned let view: GreetingViewInputProtocol
    var interactor: GreetingInteractorInputProtocol!
    
    required init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
}

// MARK: - GreetingInteractorOutputProtocol
extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "Hello \(greetingData.name) \(greetingData.surname)!"
        view.setGreeting(greeting)
    }
}
