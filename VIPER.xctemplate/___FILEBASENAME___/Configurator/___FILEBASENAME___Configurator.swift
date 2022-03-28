//
//  ___FILEHEADER___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ {

    func configureModuleForViewInput<UIViewController>(_ viewInput: UIViewController) {
        if let viewController = viewInput as? ___VARIABLE_moduleName:identifier___ViewController {
            configure(viewController)
        }
    }

    private func configure(_ viewController: ___FILEBASENAMEASIDENTIFIER___ViewController) {

        let router = ___VARIABLE_moduleName:identifier___Router()
        router.view = viewController

        let presenter = ___VARIABLE_moduleName:identifier___Presenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ___VARIABLE_moduleName:identifier___Interactor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
