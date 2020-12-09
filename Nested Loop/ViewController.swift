//
//  ViewController.swift
//  Nested Loop
//
//  Created by eric on 2020/12/3.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var showslider: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var select = 0
    @IBAction func segmented(_ sender: UISegmentedControl) {
      select =  sender.selectedSegmentIndex
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        var showlabel = ""
        //停在整數的位置
        sender.value = sender.value.rounded()
        let number = Int(sender.value)
        
        switch select {
        case 0:
              //正方形
                for _ in 1...number {
                    for _ in 1...number {
                        showlabel = showlabel + "⭐️"
                    }
                    showlabel = showlabel + "\n"
//                    let star = number
//                    let showstar = String(repeating: "⭐️", count: star)
//                    showlabel = showlabel + showstar
//                    showlabel = showlabel + "\n"
                }
             
                label.text = showlabel
                showslider.text = "\(number)"
        case 1:
              //三角形
                for i in 1...number  {
                    for _ in 1...i {
                        showlabel = showlabel + "⭐️"
                    }
                    showlabel = showlabel + "\n"
                }
                label.text = showlabel
                showslider.text = "\(number)"
        case 2:
            //金字塔
            for i in 1...number {
                let apple = number - i
                let star = (i*2) - 1
                let showapple = String(repeating: "🍎", count: apple)
                let showstar = String(repeating: "⭐️", count:     star)
                showlabel = showlabel + showapple + showstar
                showlabel = showlabel + "\n"
                label.text = showlabel
                showslider.text = "\(number)"
            }
         
        case 3:
            //菱形
            var apple:Int
            var star:Int
            for i in 1...number*2 - 1 {
                if i < number {
                   star =  (i*2) - 1
                   apple = number - i
                } else {
                    star =  (number * 2 - i ) * 2 - 1
                    apple =  i - number
                }

                let showstar = String(repeating: "⭐️", count: star)
                let showapple = String(repeating: "🍎", count: apple )

                showlabel = showlabel + showapple + showstar
                showlabel = showlabel + "\n"
                label.text = showlabel
                showslider.text = "\(number)"
            }
       
        
        
        
        case 4:
           
              //倒三角
                for i in 1...number  {
                    let star = number - i + 1
                    let showstar = String(repeating: "⭐️", count: star)
                    showlabel = showlabel + showstar
                    showlabel = showlabel + "\n"

                }
                label.text = showlabel
                showslider.text = "\(number)"
            
        case 5:
            //正方形劃底線
              for i in 1...number {
                  for _ in 1...number {
                    if i == number {
                        showlabel = showlabel + "🍎"
                    } else {
                        showlabel = showlabel + "⭐️"
                          }
                  }
                showlabel = showlabel + "\n"
              }
              label.text = showlabel
              showslider.text = "\(number)"
         
        case 6:
            //正方形劃斜線
            for i in 1...number {
                for j in 1...number {
                  if i + j == number + 1 {
                    showlabel = showlabel + "🍎"
                  } else {
                    showlabel = showlabel + "⭐️"
                        }
                }
                showlabel = showlabel + "\n"
            }
            label.text = showlabel
            showslider.text = "\(number)"
            
        case 7:
            //正方形圖案交錯
            for i in 1...number {
                for j in 1...number {
                  if i % 2 == 0 , j % 2 != 0 {
                    showlabel = showlabel + "🍎"
                  } else if  i % 2 == 1 , j % 2 != 1 {
                    showlabel = showlabel + "🍎"
                  } else {
                    showlabel = showlabel + "⭐️"
                  }
                }
                showlabel = showlabel + "\n"
            }
            label.text = showlabel
            showslider.text = "\(number)"
            
        default:
            break
        }
   
    }

}

