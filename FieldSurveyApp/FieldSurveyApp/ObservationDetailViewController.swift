//
//  ObservationDetailViewController.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/22/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

class ObservationDetailViewController: UIViewController {
    
    var observation: ObservationItem?

    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       dateFormatter.dateStyle = .medium
              dateFormatter.timeStyle = .medium
              
              icon.image = UIImage(named: observation!.classification)
              descriptionLabel.text = observation?.description
              detailsLabel.text = observation?.title
              
              if let date = observation?.date {
                  dateLabel.text = dateFormatter.string(from: date)
              } else {
                  dateLabel.text = ""
              }
        
        
            // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
