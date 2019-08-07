//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Moya


enum ___VARIABLE_productName:identifier___Api {
    
}


extension ___VARIABLE_productName:identifier___Api: TargetType {
    
    var baseURL: URL {
        guard let url = URL(string: baseUrl) else { fatalError("Invalid base url") }
        return url
    }
    
    var path: String {
        switch self {
        default:
            return "/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }
    
    var sampleData: Data {
        return "Test sample data".data(using: .utf8)!
    }
    
    var parameters: [String: Any] {
        switch self {
        default:
            return [:]
        }
    }
    
    var task: Task {
        switch self {
        default:
            return Task.requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
}
