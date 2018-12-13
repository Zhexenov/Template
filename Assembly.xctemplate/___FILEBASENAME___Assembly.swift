//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Foundation
import Swinject

public class ___VARIABLE_productName:identifier___Assembly: Assembly {
    
    public init() {}
    
    public func assemble(container: Container) {
        container.register(___VARIABLE_productName:identifier___Module.self) { (_, appRouter: IAppRouter) in
            ___VARIABLE_productName:identifier___Module(router: appRouter)
        }
        
        container.register(I___VARIABLE_productName:identifier___Wireframe.self) { (_, appRouter: IAppRouter) -> I___VARIABLE_productName:identifier___Wireframe in
            ___VARIABLE_productName:identifier___Wireframe(router: appRouter)
        }
        
        container.register(I___VARIABLE_productName:identifier___DataManager.self) { _ in
            return ___VARIABLE_productName:identifier___DataManager()
        
        container.register(I___VARIABLE_productName:identifier___Interactor.self) { r in
            
            let dataManager = r.resolve(I___VARIABLE_productName:identifier___DataManager.self)
            let interactor = ___VARIABLE_productName:identifier___Interactor(manager: dataManager)
            return interactor
        }
        
        container.register(I___VARIABLE_productName:identifier___Presenter.self) { (r, appRouter: IAppRouter, view: I___VARIABLE_productName:identifier___View) in
            let wireframe = r.resolve(I___VARIABLE_productName:identifier___Wireframe.self, argument: appRouter)!
            let interactor = r.resolve(I___VARIABLE_productName:identifier___Interactor.self)!
            let presenter = ___VARIABLE_productName:identifier___Presenter(interactor: interactor, wireframe: wireframe, view: view)
            interactor.delegate = presenter
            return presenter
        }
        
        /*
         | If you need passing some paramenter,
         | you can add new params with name parameters or other, ex:
         |
         | container.register(___VARIABLE_productName:identifier___ViewController.self) { (r, appRouter: IAppRouter, parameters: [String: Any]) in
         |     let bundle = Bundle(for: ___VARIABLE_productName:identifier___ViewController.self)
         |     let view = ___VARIABLE_productName:identifier___ViewController(nibName: "___VARIABLE_productName:identifier___ViewController", bundle: bundle)
         |     let presenter = r.resolve(IPresenter.self, arguments: appRouter, view as I___VARIABLE_productName:identifier___ViewController)!
         |     presenter.parameters = parameters
         |     view.presenter = presenter
         |     return view
         | }
         */
        
        container.register(___VARIABLE_productName:identifier___ViewController.self) { (r, appRouter: IAppRouter, parameters: [String: Any]) in
            
            // To load ViewController from .nib
            /*
             let bundle = Bundle(for: ___VARIABLE_productName:identifier___ViewController.self)
             let view = ___VARIABLE_productName:identifier___ViewController(nibName: "___VARIABLE_productName:identifier___ViewController", bundle: bundle)
            */
            
            let view = ___VARIABLE_productName:identifier___ViewController()
            let presenter = r.resolve(I___VARIABLE_productName:identifier___Presenter.self, arguments: appRouter, view as I___VARIABLE_productName:identifier___View)!
            presenter.parameters = parameters
            view.presenter = presenter
            return view
        }
    }
}
