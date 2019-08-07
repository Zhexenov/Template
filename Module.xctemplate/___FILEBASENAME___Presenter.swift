//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Foundation


class ___VARIABLE_productName:identifier___Presenter: I___VARIABLE_productName:identifier___Presenter {
	
	var interactor: I___VARIABLE_productName:identifier___Interactor?
	var wireframe: I___VARIABLE_productName:identifier___Wireframe?
	weak var view: I___VARIABLE_productName:identifier___View?
    
	var parameters: [String: Any]?
	
	init(interactor: I___VARIABLE_productName:identifier___Interactor, wireframe: I___VARIABLE_productName:identifier___Wireframe, view: I___VARIABLE_productName:identifier___View) {
		self.interactor = interactor
		self.wireframe = wireframe
		self.view = view
	}
    
    func viewDidLoad() {
        interactor?.viewDidLoad()
    }
}


extension ___VARIABLE_productName:identifier___Presenter: I___VARIABLE_productName:identifier___InteractorOutput {
	
    func onError(message: String?) {
        
    }
}
