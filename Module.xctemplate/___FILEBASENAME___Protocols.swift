//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Foundation


/* WireFrame */
public protocol I___VARIABLE_productName:identifier___Wireframe: class {
    
    func presentView(parameters: [String: Any], presentType: PresentType)
    
}

/* Interactor */
public protocol I___VARIABLE_productName: identifier___InteractorDelegate: class {
    
}

public protocol I___VARIABLE_productName: identifier___Interactor: class {
    
    var delegate: I___VARIABLE_productName:identifier___InteractorDelegate? { get set }
}

/* Presenter */
public protocol I___VARIABLE_productName:identifier___Presenter: class {
    
    var parameters: [String: Any]? { get set }
    
}

/* View */
public protocol I___VARIABLE_productName:identifier___ViewController: class {
    
}
