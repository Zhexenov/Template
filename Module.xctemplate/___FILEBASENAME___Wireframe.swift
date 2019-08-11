//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import UIKit


class ___VARIABLE_productName:identifier___Wireframe: I___VARIABLE_productName:identifier___Wireframe {
    
    let router: IAppRouter

    init(router: IAppRouter) {
        self.router = router
    }

    func presentView(parameters: [String: Any], presentType: PresentType) {
        guard let view = router.resolver.resolve(I___VARIABLE_productName:identifier___View.self, arguments: router, parameters) as? UIViewController else {
            fatalError("IView to present is not UIViewController")
        }
        router.present(view: view, animatedDisplay: true, animatedDismiss: true, presentType: presentType)
    }
}
