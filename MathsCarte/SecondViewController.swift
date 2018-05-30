//
//  SecondViewController.swift
//  MathsCarte
//
//  Created by Thomas Etcheverria on 30/05/2018.
//  Copyright © 2018 Belette Team. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var receivedData = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if receivedData != "null"{
            loadMyMindMap()
        }
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadMyMindMap(){
        let filename = receivedData
        print(filename)
        imageView.image = UIImage(named:filename)
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }


}
