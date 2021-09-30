//
//  WebRequest.swift
//  Soap
//
//  Created by HYEJI on 2021/09/30.
//

import Foundation

class WebRequest: NSObject {
    
    static let shared = WebRequest()
    let session = URLSession.shared
    
    func call_api(url: String, callback: @escaping (_ data: String) -> Void) {
        
        let url = URL(string: url)
        let header = [
            "content-type": "text/xml"
        ]
        let param = "<soap>"
        
        var request = URLRequest(url: url!)
        request.allHTTPHeaderFields = header
        request.httpMethod = "POST"
        request.httpBody = param.data(using: .utf8)
        
        let task = session.dataTask(with: request) { (data, response, error) in DispatchQueue.main.async {
            if error != nil {
                callback(error?.localizedDescription ?? "try again")
            }
            else{
                if data != nil {
                    if let data_str = String(data: data!, encoding: .utf8) {
                        callback(data_str)
                    }
                    else {
                        callback("try again")
                    }
                }
                else {
                    callback("try again")
                }
            }
        }
        
    }
        
    task.resume()
        
    }
    
}
