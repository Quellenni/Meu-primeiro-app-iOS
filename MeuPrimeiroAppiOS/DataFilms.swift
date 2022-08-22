//
//  DataFilms.swift
//  MeuPrimeiroAppiOS
//
//  Created by Quellenni Barreto on 17/08/22.
//

import Foundation

class DataFilms {
    
   static var films:[Film] = []
    
    static func getFavoriteFilms() -> [Film]{
        var favoriteFilms:[Film] = []
        
        for film in DataFilms.films{
            if(film.isMyFavorite) {
                favoriteFilms.append(film)
            }
        }
        
        return favoriteFilms
    }
}
