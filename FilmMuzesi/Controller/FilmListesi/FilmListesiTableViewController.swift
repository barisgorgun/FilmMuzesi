//
//  FilmListesiTableViewController.swift
//  FilmMuzesi
//
//  Created by Emin on 24.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import UIKit

class FilmListesiTableViewController: UITableViewController {

    var response : FilmResponseModel?
    var gelenid : Int = 0
    var secilenImage: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = Request()
        request.getMovieList(id: gelenid) { (responseModel, error) in
            self.response = responseModel
           
            
    
            self.tableView.reloadData()
        }

    
    }

    // MARK: - Table view data source

 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return response?.results.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmListesiCell", for: indexPath) as! FilmListesiTableViewCell

        
        //cell.title.text = response?.results[indexPath.row].title
        //cell.filmImage

        cell.fillData(title: response?.results[indexPath.row].title ?? "No Name", filmImageUrlStr:  response?.results[indexPath.row].posterPath ?? "")
        return cell
    }
    
}
