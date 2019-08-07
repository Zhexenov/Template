//
//  CommonAssembly
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Swinject


public class CommonAssembly: Assembly {
	
	public func assemble(container: Container) {
		container.register(IAppRouter.self) { _ in
			AppRouter.shared
		}
	}
}
