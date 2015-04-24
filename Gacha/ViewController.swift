//
//  ViewController.swift
//  Gacha
//
//  Created by Arai Marina on 2015/04/24.
//  Copyright (c) 2015年 Arai Marina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //乱数を発生させる
    @IBAction func getRandomNumber() {
        number = Int(arc4random_uniform(10))
        NSLog("発生した乱数は...%dです", number)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //セグエのdestination（目的地）つまり次の画面を取得する
        var resultViewController = segue.destinationViewController as ResultViewController
        //結果画面のnumberにガチャ画面で生成した乱数を渡す
        resultViewController.number = self.number
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
