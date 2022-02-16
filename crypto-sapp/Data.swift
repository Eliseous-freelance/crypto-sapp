//
//  Data.swift
//  crypto-sapp
//
//  Created by Eliseo Dalle Crode on 15/02/2022.
//

import UIKit
class Data{
    private var url: String
    
    init(url: String){
        // Prepare URL
        self.url = url
        
        guard let requestUrl = URL(string: self.url) else {
            fatalError()
        }

        // Prepare URL Request Object
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
         
        // HTTP Request Parameters which will be sent in HTTP Request Body
        let postString = "userId=300&title=My urgent task&completed=false";

        // Set HTTP Request Body
        request.httpBody = postString.data(using: String.Encoding.utf8);
        executeRequest(request: request)
    }
    
    func executeRequest(request: URLRequest){
        // Perform HTTP Request
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                // Check for Error
                if let error = error {
                    print("Error took place \(error)")
                    return
                }
         
                // Convert HTTP Response Data to a String
                if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    print("Response data string:\n \(dataString)")
                }
        }
        task.resume()
    }
}
