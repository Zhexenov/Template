//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


class ___VARIABLE_productName:identifier___Wireframe: I___VARIABLE_productName:identifier___Wireframe {
    
    let router: IAppRouter

    init(router: IAppRouter) {
        self.router = router
    }

    func presentView(parameters: [String: Any], presentType: PresentType) {
        let view = router.resolver.resolve(___VARIABLE_productName:identifier___ViewController.self, arguments: router, parameters)!
        router.present(view: view, animatedDisplay: true, animatedDismiss: true, presentType: presentType)
    }
}
