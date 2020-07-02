//
//  ViewController.swift
//  FilmMuzesi
//
//  Created by MacBook on 18.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import UIKit

class KategoriViewController: UITableViewController {

    var response: KategoriResponseModel?
    var secilenId : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let request = Request()
        request.getMovieKategori(completionHandler: { (responseModel,error) in
            self.response = responseModel
            self.tableView.reloadData()
        })
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriCell") as! KategoriTableViewCell
        
        let kategoriName = response?.genres[indexPath.row].name
        cell.kayegoriLabel.text = kategoriName
        
        if let image = UIImage(named: kategoriName!){
            cell.kategoriImage.image = image
        }else{
            cell.kategoriImage.image = UIImage(named: "NoImage")
        }

        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return response?.genres.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // segue
        // Kategori datası
        // Data göndermen lazım
        
        secilenId = response?.genres[indexPath.row].id
        performSegue(withIdentifier: "showMovies", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FilmListesiTableViewController
        destinationVC.gelenid = secilenId ?? 0
    }
}

