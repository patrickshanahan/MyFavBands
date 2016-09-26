//
//  DetailViewController.swift
//  MyFavBands
//
//  Created by cis290 on 9/26/16.
//  Copyright © 2016 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // @IBOutlet weak var detailDescriptionLabel: UILabel!

    
    @IBOutlet weak var productimageView: UIImageView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
         //   self.configureView()
        }
    }
    
    var productName: String? {
        didSet{
            
        }
    }
    
    var productURL: NSString? {
        didSet{
            
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            productimageView.image = UIImage(named:productURL! as String)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Product URL: \(productURL)")
        print("Product Name: \(productName)")
        if productName == nil {
            productimageView.image = UIImage(named:"Main.ping")
        }
        title = productName
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

