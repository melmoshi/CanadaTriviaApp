//
//  PremiumScreen.swift
//  CanadaFacts
//
//  Created by Mel and Sand on 2017-12-01.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit



class PremiumScreen: UIViewController {
    
    @IBOutlet weak var factLbl: UILabel!
    @IBOutlet weak var maxLbl: UILabel!
    @IBOutlet weak var goPremLbl: UIButton!
    @IBOutlet weak var bonusBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "lastSavedDate") == nil {
            print("There is no saved date on file")
            storeDate()
            factsSeen = 0
            storeFactsSeen()
        } else {
            print("There is a date stored on Local Storage")
            if checkTodaysDate() == UserDefaults.standard.object(forKey: "lastSavedDate") as? String {
                print("You have already played today")
                if let x = UserDefaults.standard.object(forKey: "numberOfFactsSeen") as? Int {
                    factsSeen = x
                    
                    //                    if gamesPlayed > 3 {
                    //                        maxWarningBtn.isHidden = false
                    //                    }
                    
                    print("You have seen \(factsSeen) facts today")
                    
                }
                
            } else {
                print("You are playing for the first time today")
                factsSeen = 0
                storeFactsSeen()
                storeDate()
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        factsSeen += 1
        storeFactsSeen()
        
        if factsSeen > 1 {
            maxLbl.isHidden = false
            goPremLbl.isHidden = false
            bonusBtn.isHidden = true
            
        }
        
        
        //        if factsSeen == 2 {
        //            performSegue(withIdentifier: ".........", sender: self)
        //        }
        //        if factsSeen > 2 {
        //            performSegue(withIdentifier: ".........", sender: self)
        //        }     //FILL IN LATER ON WHERE YOU WANT THE VIEW TO GO.
    }
    
    
    @IBAction func anotherOneBtnPressed(_ sender: Any) {
        
        factLbl.text = "new fact"
        factsSeen += 1
        storeFactsSeen()
        print("You have seen \(factsSeen) facts today")
        maxLbl.isHidden = false
        goPremLbl.isHidden = false
        bonusBtn.isHidden = true
        
        
    }
    
    @IBOutlet weak var goPremPressed: UIButton!
    //ADD PREMIUM FEATURE HERE!
}

