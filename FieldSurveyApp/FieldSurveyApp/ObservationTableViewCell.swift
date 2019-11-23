//
//  ObservationTableViewCell.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/22/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
