//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


class ___VARIABLE_productName:identifier___Interactor: I___VARIABLE_productName:identifier___Interactor {
	
	weak var presenter: I___VARIABLE_productName:identifier___InteractorOutput?
    var dataManager: I___VARIABLE_productName:identifier___DataManager?


    init(manager: I___VARIABLE_productName:identifier___DataManager?) {
		dataManager = manager
	}
    
    func viewDidLoad() {
        
    }
}


extension ___VARIABLE_productName:identifier___Interactor: I___VARIABLE_productName:identifier___DataManagerOutput {
    
    func onError(message: String?) {
        
    }
}
