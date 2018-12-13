//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Foundation

// Presenter -> View
@objc public protocol IBaseView: class {
    
    @objc optional func showLoading()
    
    @objc optional func showError(message: String)
    
    @objc optional func hideLoading()
}

//    View  -> Presenter
@objc public protocol IBasePresenter: class {
    
    func viewDidLoad()
    
    @objc optional func viewWillAppear()
    
    @objc optional func viewWillDisappear()
}

 //    View  -> Presenter
@objc public protocol IBaseInteractor: class {
   
    func viewDidLoad()
    
    @objc optional func viewWillAppear()
    
    @objc optional func viewWillDisappear()
}

// Interactor -> Presenter
@objc public protocol IBaseInteractorOutput: class {
    
    func onError(message: String?)
}

// DataManager -> Interactor
@objc public protocol IBaseDataManagerOutput: class {
    
    func onError(message: String?)
}
