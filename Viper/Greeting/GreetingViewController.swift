//
//  ViewController.swift
//  Viper
//
//  Created by Вячеслав Квашнин on 02.05.2022.
//

import UIKit

protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol: AnyObject {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreetingButton()
}

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    var presenter: GreetingViewOutputProtocol!
    private let configurator: GreetingConfigurateProtocol = GreetingConfigurate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }

    @IBAction func pressedButton(_ sender: Any) {
        presenter.didTapShowGreetingButton()
    }
}

// MARK: - GreetingViewInputProtocol

extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
