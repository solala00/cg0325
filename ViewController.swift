//
//  ViewController.swift
//  test
//
//  Created by student on 2020/3/25.
//  Copyright © 2020年 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cards: [UIButton]!
    @IBOutlet weak var winLabel: UILabel!
    var win = 0
    @IBOutlet weak var loseLabel: UILabel!
    var lose = 0
    var m = arc4random_uniform(13)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        a[Int(m)] = true
        
        cards[Int(m)].setTitle(String(m+1), for: UIControlState.normal)
        cards[Int(m)].backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var a = [ false, false, false, false, false, false, false, false, false, false, false, false, false]
    
    
    
    
    @IBAction func click(_ sender: UIButton) {
        if sender.titleLabel?.text != nil{
            return
        }
        var n = arc4random_uniform(13)
        var k = true
        while (k) {
            if (a[Int(n)] == false){
                a[Int(n)] = true
                k = false
            }
            else{
                print(n)
                n = arc4random_uniform(13)
            }
        }
        
        sender.setTitle(String(n+1), for:UIControlState.normal)
        sender.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        
        if (n+1 > 1 && n+1 < (m+1)) || (m+1) == 1 {
            lose += 1
            loseLabel.text = "lose: " + String(lose)
        }
        else{
            if n+1 == 1 || n+1 > (m+1) {
                win += 1
                winLabel.text = "win: " + String(win)
            }
        }
        
        
        
    }
    
}

