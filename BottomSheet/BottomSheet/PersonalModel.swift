//
//  PersonalModel.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/08/01.
//

import Foundation

class PersonalModel : NSObject{
    var personalId : String?
    var personalContent : String?
    var cd : String?
    var name: String?
    var price: Int?
    var img: String?
 
    override init() {
        
    }
    
    init(personalId: String, personalContent: String, cd: String, name: String, price: Int, img: String){
        self.personalId = personalId
        self.personalContent = personalContent
        self.cd = cd
        self.name = name
        self.price = price
        self.img = img
    }
    
}
