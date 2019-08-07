//
//  DevProductRouter.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


public class DevProductRouter: IProductRouter {
    
    public let router: IAppRouter
    
    public let modules: [String: (IAppRouter) -> IModule] = [:] // Products.Dev.LoginModule.routePath: { LoginModule(router: $0) }
    
    public init(router: IAppRouter) {
        self.router = router
    }
    
    public func presentModule(module: Module, parameters: [String : Any], presentType: PresentType) {
        if let moduleConstructor = modules[module.routePath] {
            let module = moduleConstructor(router)
            module.presentView(parameters: parameters, presentType: presentType)
        }
    }
}
