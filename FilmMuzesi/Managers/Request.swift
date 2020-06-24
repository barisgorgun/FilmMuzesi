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
    
    public func getMovieKategori(){
        let url = "https://api.themoviedb.org/3/genre/movie/list?api_key=" + API_KEY + "&language=en-US"
      
        let request = AF.request(url)
        
        AF.request(url,method: .get).responseDecodable { (response: DataResponse<KategoriResponseModel>) in
               guard response.result.isSuccess else {
                 print("🥶 Error on login: \(String(describing: response.error))")
                 return
               }
               completion(response.result)
           }
            
            
        }
        /*request.responseJSON { data in
            print(data.result)
           

             }*/
        }
    }

