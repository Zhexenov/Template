//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Jex. All rights reserved.


import Moya


public enum ___VARIABLE_productName:identifier___Api {
    
}


extension ___VARIABLE_productName:identifier___Api: TargetType {
    
    public var baseURL: URL {
        guard let url = URL(string: baseUrl) else { fatalError("Invalid base url") }
        return url
    }
    
    public var path: String {
        switch self {
        default:
            return "/"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }
    
    public var sampleData: Data {
        return "Test sample data".data(using: .utf8)!
    }
    
    var parameters: [String: Any] {
        switch self {
        default:
            return [:]
        }
    }
    
    public var task: Task {
        switch self {
        default:
            return Task.requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }
    
    public var headers: [String : String]? {
        return nil
    }
}
