//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Foundation
import Moya

public class ___VARIABLE_productName:identifier___DataManager: I___VARIABLE_productName:identifier___DataManager {
    public var handler: I___VARIABLE_productName:identifier___DataManagerOutput?
    
    private var provider: MoyaProvider<___VARIABLE_productName:identifier___Api> {
        return MoyaProvider<___VARIABLE_productName:identifier___Api>()
        
        // with verbose logs
//        return MoyaProvider<___VARIABLE_productName:identifier___Api>(plugins: [NetworkLoggerPlugin(verbose: true, responseDataFormatter: JSONResponseDataFormatter)])
    }
    
}
