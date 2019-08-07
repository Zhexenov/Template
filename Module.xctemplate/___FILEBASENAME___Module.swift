//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


class ___VARIABLE_productName:identifier___Module: IModule {
    
    let router: IAppRouter

    init(router: IAppRouter) {
        self.router = router
    }

    func presentView(parameters: [String: Any], presentType: PresentType) {
        let wireframe = router.resolver.resolve(I___VARIABLE_productName:identifier___Wireframe.self, argument: router)!
        wireframe.presentView(parameters: parameters, presentType: presentType)
    }
}
