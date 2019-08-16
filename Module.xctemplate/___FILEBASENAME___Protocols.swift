//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


/* WireFrame */
protocol I___VARIABLE_productName:identifier___Wireframe: class {
    
    func presentView(parameters: [String: Any], presentType: PresentType)
    
}


/* Interactor */
protocol I___VARIABLE_productName: identifier___Interactor: IBaseInteractor {
    
    var presenter: I___VARIABLE_productName:identifier___InteractorOutput? { get set }
    var dataManager: I___VARIABLE_productName:identifier___DataManager? { get set }

}

protocol I___VARIABLE_productName: identifier___InteractorOutput: IBaseInteractorOutput {
    
}


/* Presenter */
protocol I___VARIABLE_productName:identifier___Presenter: IBasePresenter {
    
    var view: I___VARIABLE_productName:identifier___View? { get set }
    var parameters: [String: Any]? { get set }
    
}


/* View */
protocol I___VARIABLE_productName:identifier___View: IBaseView {
    
    var presenter: I___VARIABLE_productName:identifier___Presenter? { get set }
    
}


/* DataManager */
protocol I___VARIABLE_productName:identifier___DataManager: IBaseDataManager {
    
    var handler: I___VARIABLE_productName:identifier___DataManagerOutput? { get set }

}

protocol I___VARIABLE_productName:identifier___DataManagerOutput: IBaseDataManagerOutput {
    
}
