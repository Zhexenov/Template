//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


// Presenter -> View
@objc protocol IBaseView: class {
    
    @objc optional func showLoading()
    
    @objc optional func hideLoading()
    
    @objc optional func showError(message: String)
}


//    View  -> Presenter
@objc protocol IBasePresenter: class {
    
    func viewDidLoad()
    
    @objc optional func viewWillAppear()
    
    @objc optional func viewWillDisappear()
}


 //    View  -> Presenter
@objc protocol IBaseInteractor: class {
   
    func viewDidLoad()
    
    @objc optional func viewWillAppear()
    
    @objc optional func viewWillDisappear()
}


// Interactor -> Presenter
@objc protocol IBaseInteractorOutput: class {
    
    func onError(message: String?)
}


// DataManager -> Interactor
@objc protocol IBaseDataManagerOutput: class {
    
    func onError(message: String?)
}
