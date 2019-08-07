//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Moya


class ___VARIABLE_productName:identifier___DataManager: I___VARIABLE_productName:identifier___DataManager {
    
    weak var handler: I___VARIABLE_productName:identifier___DataManagerOutput?
    
    private var provider: MoyaProvider<___VARIABLE_productName:identifier___Api>
    
//     private var provider: MoyaProvider<___VARIABLE_productName:identifier___Api> {
//         return MoyaProvider<___VARIABLE_productName:identifier___Api>()
//     }
    
    init(sessionManager: ISessionManager) {
        provider = API.provider(sessionManager: sessionManager)
    }   
}
