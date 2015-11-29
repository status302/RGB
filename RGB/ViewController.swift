//
//  ViewController.swift
//  RGB
//
//  Created by 程庆春 on 15/11/29.
//  Copyright © 2015年 Qiun cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlide: UISlider!
    @IBOutlet weak var greenSlide: UISlider!
    @IBOutlet weak var blueSlide: UISlider!
    @IBOutlet weak var alphaSlide: UISlider!
    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var redValueLable: UILabel!
    @IBOutlet weak var greenValueLable: UILabel!
    @IBOutlet weak var blueValueLable: UILabel!
    @IBOutlet weak var alphaValueChange: UILabel!

    @IBAction func slideValueChange(sender: AnyObject) {
        showView.backgroundColor = UIColor(red: CGFloat(redSlide.value), green: CGFloat(greenSlide.value), blue: CGFloat(blueSlide.value), alpha: CGFloat(alphaSlide.value))
        
        redValueLable.text = "\(redSlide.value)"
        greenValueLable.text = "\(greenSlide.value)"
        blueValueLable.text = "\(blueSlide.value)"
        alphaValueChange.text = "\(alphaSlide.value)"

        alphaSlide.thumbTintColor = showView.backgroundColor
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        slideValueChange(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

