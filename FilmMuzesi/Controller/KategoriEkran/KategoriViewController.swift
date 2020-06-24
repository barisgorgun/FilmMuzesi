//
//  ViewController.swift
//  FilmMuzesi
//
//  Created by MacBook on 18.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import UIKit

class KategoriViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let request = Request()
        request.getMovieKategori()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriCell") as! KategoriTableViewCell
        cell.kayegoriLabel.text = "Test"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

