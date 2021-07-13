//
//  DetailViewController.swift
//  BountyList
//
//  Created by 이상민 on 2021/07/13.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var BountyLabel: UILabel!
    
    var name: String?
    var bounty: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let name = self.name, let bounty = self.bounty {
            let img = UIImage(named: "\(name).jpg")
            imgView.image = img
            nameLabel.text = name
            BountyLabel.text = "\(bounty)"
        }   
    }
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
