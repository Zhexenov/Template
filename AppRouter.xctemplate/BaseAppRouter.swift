//
//  BaseAppRouter.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Swinject


protocol IProductRouter: class {
    func presentModule(module: Module, parameters: [String: Any], presentType: PresentType)
}


class BaseAppRouter: NSObject, IAppRouter, UINavigationControllerDelegate {
    private var assembler: Assembler!
    private var products: [String: (_ appRouter: IAppRouter) -> IProductRouter] = [:]
    let appDelegate = UIApplication.shared.delegate
    private var navigationController: UINavigationController?
    
    init(assembler: Assembler, products: [String: (_ appRouter: IAppRouter) -> IProductRouter]) {
        self.assembler = assembler
        self.products = products
    }
    
    var resolver: Resolver {
        return assembler.resolver
    }
    
    func presentModule(module: Module, parameters: [String: Any], presentType: PresentType) {
        if let productConstuctor = products[module.productName] {
            let product = productConstuctor(self)
            product.presentModule(module: module, parameters: parameters, presentType: presentType)
        }
    }
    
    func present(view: UIViewController, animatedDisplay: Bool, animatedDismiss: Bool, presentType: PresentType) {
        switch presentType {
        case .root:
            appDelegate?.window??.rootViewController = UINavigationController(rootViewController: view)
            navigationController = appDelegate?.window??.rootViewController as? UINavigationController
        case .push:
            navigationController?.pushViewController(view, animated: animatedDisplay)
        case .present:
            navigationController?.present(view, animated: animatedDisplay, completion: nil)
        case .presentWithNavigationBar:
            let nav = UINavigationController(rootViewController: view)
            navigationController?.present(nav, animated: animatedDisplay) {
                self.navigationController = nav
            }
        case .modal:
            view.modalPresentationStyle = .overCurrentContext
            view.modalTransitionStyle = .crossDissolve
            navigationController?.present(view, animated: animatedDisplay, completion: nil)
        case .modalWithNavigationBar:
            let nav = UINavigationController(rootViewController: view)
            nav.modalPresentationStyle = .overCurrentContext
            nav.modalTransitionStyle = .crossDissolve
            navigationController?.present(nav, animated: animatedDisplay) {
                self.navigationController = nav
            }
        }
    }
    
    func dismiss() {
        navigationController?.dismiss(animated: true) {
            self.navigationController = self.appDelegate?.window??.rootViewController as? UINavigationController
        }
    }
    
    func popToRootViewController(animated: Bool) {
        navigationController?.popToRootViewController(animated: animated)
    }
    
    func popViewController(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }
}
