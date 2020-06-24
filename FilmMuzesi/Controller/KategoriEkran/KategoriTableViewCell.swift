//
//  KategoriTableViewCell.swift
//  FilmMuzesi
//
//  Created by MacBook on 18.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import UIKit

class KategoriTableViewCell: UITableViewCell {

    
    @IBOutlet weak var kayegoriLabel: UILabel!
    @IBOutlet weak var kategoriImage: UIImageView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
