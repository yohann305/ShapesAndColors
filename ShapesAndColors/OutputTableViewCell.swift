//
//  OutputTableViewCell.swift
//  ShapesAndColors
//
//  Created by Yohann Taieb on 6/8/22.
//

import UIKit

class OutputTableViewCell: UITableViewCell {

    @IBOutlet weak var sentenceLabel: UILabel!
    @IBOutlet weak var shapeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCell(entry: OutputEntry) {
        
        sentenceLabel.text = "Color \(entry.colorText ?? "") and Shape \(entry.shapeText ?? "") selected. Result is "
        shapeImageView.image = entry.shapeImage
        shapeImageView.backgroundColor = entry.colorValue
    }
}
