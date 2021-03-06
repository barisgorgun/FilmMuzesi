//
//  FilmResponseModel.swift
//  FilmMuzesi
//
//  Created by Emin on 24.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import Foundation

// MARK: - FilmResponseModel
struct FilmResponseModel: Codable {
    var page: Int?
    var totalResults: Int?
    var totalPages: Int?
    let results: [Result]

    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }
}

// MARK: - Result
struct Result: Codable {
    let popularity: Double?
    let voteCount: Int?
    let video: Bool?
    let posterPath: String?
    let id: Int?
        let title: String?
   /* let adult: Bool
    let backdropPath: String
   // let originalLanguage: OriginalLanguage
    let originalTitle: String
    let genreIDS: [Int]
    let title: String
    let voteAverage: Double
    let overview, releaseDate: String*/

    enum CodingKeys: String, CodingKey {
        case popularity
        case voteCount = "vote_count"
        case video
        case posterPath = "poster_path"
        case title
        case id/*, adult
        case backdropPath = "backdrop_path"
       // case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case title
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"*/
    }
}

enum OriginalLanguage: String, Codable {
    case en = "en"
   // case fr = "fr"
}
