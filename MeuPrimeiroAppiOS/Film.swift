//
//  Film.swift
//  MeuPrimeiroAppiOS
//
//  Created by Quellenni Barreto on 17/08/22.
//

import Foundation

class Film {
    
    var name: String
    var imageName: String
    var isMyFavorite:Bool
    
    init(name:String, imageName:String, isMyFavorite:Bool){
        self.name = name
        self.imageName = imageName
        self.isMyFavorite = isMyFavorite
    }
}
