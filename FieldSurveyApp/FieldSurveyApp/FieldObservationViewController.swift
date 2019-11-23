//
//  FieldObservationViewController.swift
//  FieldSurveyApp
//
//  Created by James Kirkland on 11/22/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

class FieldObservationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var observationTableView: UITableView!
    
    let observations = SurveySetLoader.load(jsonFileName: "field_observations")
    
    let dateFormatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        dateFormatter.dateFormat = "yyyy-MM-dd-HH-mm"
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations!.observations.count
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldObservationCell", for: indexPath)
        if let cell = cell as? ObservationTableViewCell {
            
            let observation = observations?.observations[indexPath.row]
            let date = dateFormatter.string(from: observation!.date)
            cell.icon.image = UIImage(named: observation?.classification ?? "")
    
            cell.details.text = observation?.title
        
            cell.date.text = date
           // cell.date.text = dateFormatter.string(from: observation!.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationDetailViewController,
            let row = observationTableView.indexPathForSelectedRow?.row
            {
                destination.observation = observations?.observations[row]
        }
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
