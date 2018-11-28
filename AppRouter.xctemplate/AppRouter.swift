//
//  AppRouter.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Foundation
import Swinject
import UIKit

public enum PresentType {
    case root, push, present, presentWithNavigationBar, modal, modalWithNavigationBar
}

public protocol IAppRouter {
    var resolver: Resolver { get }
    func present(view: UIViewController, animatedDisplay: Bool, animatedDismiss: Bool, presentType: PresentType)
    func popToRootViewController(animated: Bool)
    func popViewController(animated: Bool)
    func dismiss()
}

public class AppRouter: BaseAppRouter {
    public static let shared = AppRouter.createAppRouter()
    public static var assembler = Assembler()
    public static var products: [String: (_ appRouter: IAppRouter) -> IProductRouter] = [:]

    private static func createAppRouter() -> AppRouter {
        let router = AppRouter(assembler: assembler, products: products)
        return router
    }
}
