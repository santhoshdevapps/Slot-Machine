/*
 * File Name : ViewController.swift
 * Author's Name : Santhosh Damodharan, Akshit upneja, Aman Preet Kaur
 * Date : 2018-1-29
 * StudentID : 300964037, 300976590, 300966930
 * Description : Slot machine - A simple slot machine game
 * Version : 1.0
 */

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate{
    
      let images = [#imageLiteral(resourceName: "dimond"),#imageLiteral(resourceName: "crown"),#imageLiteral(resourceName: "bar"),#imageLiteral(resourceName: "seven"),#imageLiteral(resourceName: "cherry"),#imageLiteral(resourceName: "lemon")]

    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

 
    //MARK: - UIPickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count * 1
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let index = row % images.count
        return UIImageView(image: images[index])
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return images[component].size.height + 10
    }

}

