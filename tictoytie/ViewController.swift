//
//  ViewController.swift
//  tictoytie
//
//  Created by COE-029 on 06/09/19.
//  Copyright © 2019 COE-029. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var player = 1   //cross
    var GamePlan =  [0, 0, 0, 0, 0, 0, 0, 0, 0]  //box chose karva..
    var wincombinations = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    //aa che winning combination !!
    var GameisActive = true
    
    
    @IBAction func action(_ sender: Any)
    {
        
        if ((sender as AnyObject).tag - 1 == 0)
        {
            GamePlan[(sender as AnyObject).tag-1] = player
            if (player == 1)
            {
                (sender as AnyObject).setImage(UIImage(named: "cross.png"),for :UIControlState())
                player = 2
            }
            else
            {
                (sender as AnyObject).setImage(UIImage(named: "circle.png"),for :UIControlState())
                player = 1
            }
        }
        for comb in wincombinations
        {
            if (GamePlan[comb[0]] != 0 && GamePlan[comb[0]] == GamePlan[comb[1]] && GamePlan[comb[1]] == GamePlan[comb[2]])
            {
               GameisActive = false
            
                if GamePlan[comb[0]] == 1
                {
                    //cross win
                    print("Cross win")
                }
                else
                {
                    //nought win
                    print("Nought win")
                }
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

