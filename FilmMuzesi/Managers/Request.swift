//
//  Request.swift
//  FilmMuzesi
//
//  Created by MacBook on 18.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import Foundation
import Alamofire



struct Request {
    
    let API_KEY = "ade094db1689805d5b0787ea9bd740d7"
    let BASE_URL = "https://api.themoviedb.org/3/"
    
    
    public func getMovieKategori(completionHandler: @escaping ((_ model: KategoriResponseModel?, _ error: AFError?) -> Void)) {
        let url = BASE_URL + "genre/movie/list?api_key=" + API_KEY + "&language=en-US"
        
        AF.request(url, method: .get).responseDecodable { (response: DataResponse<KategoriResponseModel,AFError>) in
            switch response.result{
            case .success(let responseData):
                print(responseData)
                completionHandler(responseData,nil)
            case .failure(let error):
                print(error)
                completionHandler(nil,error)
            }

        }
    }
    
    public func getMovieList(id:Int, completionHandler: @escaping ((_ model: FilmResponseModel?, _ error: AFError?) -> Void)){
          let url = BASE_URL + "discover/movie?api_key=" + API_KEY + "&with_genres=" + String(id) + "&page=1"
       // https://api.themoviedb.org/3/discover/movie?api_key=ade094db1689805d5b0787ea9bd740d7&with_genres=28&page=2

        AF.request(url, method: .get).responseDecodable { (response: DataResponse<FilmResponseModel,AFError>) in
             switch response.result{
             case .success(let responseData):
                 print(responseData)
                 completionHandler(responseData,nil)
             case .failure(let error):
                 print(error)
                 completionHandler(nil,error)
             }

         }
        
    }
    
    
    
}
