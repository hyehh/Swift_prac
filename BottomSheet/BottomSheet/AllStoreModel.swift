//
//  AllStoreModel.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/08/01.
//

import Foundation

protocol AllStoreModelProtocol : AnyObject {
    func itemDownloaded(items: NSArray)
}

class AllStoreModel: NSObject{
    var delegate: AllStoreModelProtocol!
    let urlPath = "http://\(macIp):8080/starbucks/jsp/allStoreSelect.jsp"
    
    func downloadItems(){
        let url: URL = URL(string: urlPath)!
        let defaultSession = URLSession(configuration: URLSessionConfiguration.default)
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Failed to download data")
            }else{
                print("Data is downloaded")
                self.parseJSON(data!)
            }
        }
        task.resume()
    }
    
    func parseJSON(_ data: Data){
        var jsonResult = NSArray()
        do{
            jsonResult=try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! NSArray
        }catch let error as NSError{
            print(error)
        }
        
        var jsonElement = NSDictionary()
        let locations = NSMutableArray()
        
        for i in 0..<jsonResult.count{
            jsonElement = jsonResult[i] as! NSDictionary
            if let storename = jsonElement["storename"] as? String,
               let address = jsonElement["address"] as? String{
                let query = LocationModel(storename: storename, address: address)
                locations.add(query)
            }
        }
        DispatchQueue.main.async(execute: {() -> Void in
            self.delegate.itemDownloaded(items: locations)
        })
    }
}
