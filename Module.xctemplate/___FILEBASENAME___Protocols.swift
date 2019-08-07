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
public protocol I___VARIABLE_productName: identifier___Interactor: IBaseInteractor {
    
    var presenter: I___VARIABLE_productName:identifier___InteractorOutput? { get set }
    var dataManager: I___VARIABLE_productName:identifier___DataManager? { get set }

}

public protocol I___VARIABLE_productName: identifier___InteractorOutput: IBaseInteractorOutput {
    
}


/* Presenter */
public protocol I___VARIABLE_productName:identifier___Presenter: IBasePresenter {
    
    var parameters: [String: Any]? { get set }
    
}


/* View */
public protocol I___VARIABLE_productName:identifier___View: IBaseView {
    
}


/* DataManager */
public protocol I___VARIABLE_productName:identifier___DataManager: class {
    
    var handler: I___VARIABLE_productName:identifier___DataManagerOutput? { get set }

}

public protocol I___VARIABLE_productName:identifier___DataManagerOutput: IBaseDataManagerOutput {
    
}
