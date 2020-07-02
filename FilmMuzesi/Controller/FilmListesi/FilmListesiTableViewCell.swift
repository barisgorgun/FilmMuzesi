//
//  FilmListesiTableViewCell.swift
//  FilmMuzesi
//
//  Created by Emin on 24.06.2020.
//  Copyright © 2020 Baris Gorgun. All rights reserved.
//

import UIKit
import Kingfisher
class FilmListesiTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var filmImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func fillData(title:String, filmImageUrlStr:String) {
        self.title.text = title
        
        let url = URL(string: "https://image.tmdb.org/t/p/original" + filmImageUrlStr)
        if let url = url {
            filmImage.kf.setImage(with: url)
        }
    }
}
