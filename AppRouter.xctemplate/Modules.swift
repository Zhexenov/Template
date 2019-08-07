//
//  Module.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Foundation


public protocol IModule {
    func presentView(parameters: [String: Any], presentType: PresentType)
}

public protocol Module: Product {
    var routePath: String { get }
}

public protocol Product {
    var productName: String { get }
}

public enum Products {
    case DevProduct

    public var productName: String {
        switch self {
        case .DevProduct:
            return "Dev"
        }
    }

    public enum Dev: Module {
        case LoginModule // Sample module

        public var productName: String {
            return "Dev"
        }

        public var routePath: String {
            switch self {
            case .LoginModule:
                return "/dev/login"
            }
        }
    }
}
