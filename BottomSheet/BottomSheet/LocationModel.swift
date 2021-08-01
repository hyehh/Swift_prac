//
//  LocationModel.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/08/01.
//

import Foundation

class LocationModel : NSObject{
    var storename : String?
    var lat : String?
    var long : String?
    var address : String?
 
    override init() {
        
    }
    
    init(storename: String, lat: String, long: String, address: String){
        self.storename = storename
        self.lat = lat
        self.long = long
        self.address = address
    }
    
    // 2021.08.01 조혜지 allStoreModel에서 사용할 init 추가
    init(storename: String, address: String){
        self.storename = storename
        self.address = address
    }
}
