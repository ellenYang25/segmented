//
//  ViewController.swift
//  segmented
//
//  Created by Ellen Yang on 2018/8/18.
//  Copyright © 2018年 Ellen Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girlLabel: UILabel!
    @IBOutlet weak var manLabel: UILabel!
    
    @IBOutlet weak var girlsSegmentedControl: UISegmentedControl!
    @IBOutlet weak var manSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var matchingImage: UIImageView!
    
    @IBOutlet weak var heartLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onGirlsSegmented(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 0 {
            girlLabel.text = "♒️"
        } else if (sender.selectedSegmentIndex == 1) {
            girlLabel.text = "♌️"
        } else {
            girlLabel.text = "♋️"
        }
    }
    
    @IBAction func onMenSegmented(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            manLabel.text = "♊️"
        } else if (sender.selectedSegmentIndex == 1) {
            manLabel.text = "♉️"
        } else {
            manLabel.text = "♈️"
        }
    }
    
    @IBAction func onMatch(_ sender: UIButton) {
        
        if girlsSegmentedControl.selectedSegmentIndex == 0 {
            // 女生水瓶座
            
            if manSegmentedControl.selectedSegmentIndex == 0 {
                // 男生雙子座
                print("好")
                heartLabel.text = "❤️"
                let image = UIImage(named: "好")
                matchingImage.image = image
            } else if (manSegmentedControl.selectedSegmentIndex == 1) {
                // 男生金牛座
                print("好")
                heartLabel.text = "❤️"
                let image = UIImage(named: "好")
                matchingImage.image = image
            } else {
                // 男生牡羊座
                print("好好好")
                heartLabel.text = "❤️❤️❤️"
                let image = UIImage(named: "好好好")
                matchingImage.image = image
            }
        } else if (girlsSegmentedControl.selectedSegmentIndex == 1) {
            // 女生獅子座
            if manSegmentedControl.selectedSegmentIndex == 0 {
                // 男生雙子座
                print("好好")
                heartLabel.text = "❤️❤️"
                let image = UIImage(named: "好好")
                matchingImage.image = image
            } else if (manSegmentedControl.selectedSegmentIndex == 1) {
                // 男生金牛座
                print("不好")
                heartLabel.text = "💔"
                let image = UIImage(named: "不好")
                matchingImage.image = image
            } else {
                // 男生牡羊座
                print("好")
                heartLabel.text = "❤️"
                let image = UIImage(named: "好")
                matchingImage.image = image
            }
        } else {
            // 女生巨蟹座
            if manSegmentedControl.selectedSegmentIndex == 0 {
                // 男生雙子座
                print("不好")
                heartLabel.text = "💔"
                let image = UIImage(named: "不好")
                matchingImage.image = image
            } else if (manSegmentedControl.selectedSegmentIndex == 1) {
                // 男生金牛座
                print("好好")
                heartLabel.text = "❤️❤️"
                let image = UIImage(named: "好好")
                matchingImage.image = image
            } else {
                // 男生牡羊座
                print("不好")
                heartLabel.text = "💔"
                let image = UIImage(named: "不好")
                matchingImage.image = image
            }
        }
    }
}

