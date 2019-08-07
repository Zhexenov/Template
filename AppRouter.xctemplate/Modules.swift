//
//  Module.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


protocol IModule {
    func presentView(parameters: [String: Any], presentType: PresentType)
}

protocol Module: Product {
    var routePath: String { get }
}

protocol Product {
    var productName: String { get }
}

enum Products {
    case DevProduct
    
    var productName: String {
        switch self {
        case .DevProduct:
            return "Dev"
        }
    }
    
    enum Dev: Module {
        case LoginModule // Sample module
        
        var productName: String {
            return "Dev"
        }
        
        var routePath: String {
            switch self {
            case .LoginModule:
                return "/dev/login"
            }
        }
    }
}
