//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import UIKit


public class ___VARIABLE_productName:identifier___Interactor: I___VARIABLE_productName:identifier___Interactor {
	
	// MARK: - Declare delegate

	public var presenter: I___VARIABLE_productName:identifier___InteractorOutput?
    public var dataManager: I___VARIABLE_productName:identifier___DataManager?

	/*
	 | Declare your managers here, ex:
	 |
	 | var sampleManager: ISampleManager?
	 |
	 | And let's initial managers, ex:
	 |
	 | init(sampleManager: ISampleManager) {
	 |    self.sampleManager = sampleManager
	 | }
	 */

	init() {
		// Do someting here...
	}
    
    public func viewDidLoad() {
        
    }
}

extension ___VARIABLE_productName:identifier___Interactor: I___VARIABLE_productName:identifier___DataManagerOutput {
    
    public func onError(message: String?) {
        
    }
    
}
