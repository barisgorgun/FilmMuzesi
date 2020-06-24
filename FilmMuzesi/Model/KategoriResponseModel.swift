//
//  KategoriResponseModel.swift
//  FilmMuzesi
//
//  Created by MacBook on 24.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import Foundation

struct KategoriResponseModel : Codable {
    let genres: [Genre]
}

struct Genre : Codable {
    let id: Int
    let name: String
}
