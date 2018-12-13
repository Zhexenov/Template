//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.

import Foundation
import Moya


public enum ___VARIABLE_productName:identifier___Api {
    
}


extension ___VARIABLE_productName:identifier___Api: TargetType {
    
    public var baseURL: URL {
        guard let url = URL(string: "baseUrl") else { fatalError("Invalid base url") }
        return url
    }
    
    public var path: String {
        return ""
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return "Test sample data".data(using: .utf8)!
    }
    
    var parameters: [String: Any] {
        return [:]
    }
    
    public var task: Task {
        return Task.requestPlain
    }
    
    public var headers: [String : String]? {
        return nil
    }
}
