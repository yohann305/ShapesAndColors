//
//  ViewController.swift
//  ShapesAndColors
//
//  Created by Yohann Taieb on 6/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var entries:[OutputEntry] = []
    
    var selectedShape: String?
    var selectedColorText: String?
    var selectedColorValue: UIColor?
    var selectedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func shapeTapped(_ sender: UIButton) {
        selectedShape = sender.titleLabel?.text
        selectedImage = sender.imageView?.image//sender.image(for: .normal)
        addEntry()
    }

    @IBAction func colorTapped(_ sender: UIButton) {
        selectedColorText = sender.titleLabel?.text
        selectedColorValue = sender.backgroundColor!
        addEntry()
    }
    
    func addEntry() {
        guard let shText = selectedShape, let shImage = selectedImage, let coText = selectedColorText, let coVal = selectedColorValue else {
            return
        }
        
        entries.append(OutputEntry(shapeText: shText, shapeImage: shImage, colorText: coText, colorValue: coVal))
        
        tableView.reloadData()
        resetSelection()
    }
    
    func resetSelection() {
        selectedShape = nil
        selectedColorText = nil
        selectedColorValue = nil
        selectedImage = nil
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OutputTableViewCell", for: indexPath) as! OutputTableViewCell
        
        let outputEntry = entries[indexPath.row]
        
        cell.setCell(entry: outputEntry)
        
        return cell
    }
    
    
}

