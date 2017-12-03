//
//  HomeScreen.swift
//  CanadaFacts
//
//  Created by Mel and Sand on 2017-10-28.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit
import GameKit



class HomeScreen: UIViewController {
    
    var timer = Timer()
    var randomNumber = randomNum()
    
    @IBOutlet weak var icon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Premium stuff:
        let paid = Bundle.main.object(forInfoDictionaryKey: "Paid")
        if (paid != nil) {
            //WRITE SPECIAL PREMIUM CODE HERE
        }
        
        
        let iconName = "canada-\(randomNumber)"
        print(iconName)
        
        icon.image = UIImage(named: "\(iconName)")
        
        scheduledTimerWithTimeInterval()

    }
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function "updateIcon" with the interval of 2 seconds
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.updateIcon), userInfo: nil, repeats: true)
    }
    
    
    @objc func updateIcon(){

        
        if randomNumber < 12 {
            randomNumber += 1
        } else {
            randomNumber = 0
        }
        
        let iconName = "canada-\(randomNumber)"
        print(iconName)
        
        icon.image = UIImage(named: "\(iconName)")
   
        
    }
    
}



func randomNum() -> Int {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: 12)
    
    return randomNumber
    
    //Creates a random number to call from entree array
}
