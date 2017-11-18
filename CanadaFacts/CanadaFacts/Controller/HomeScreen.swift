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
    
    @IBOutlet weak var icon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomNumber = randomNum()
        let iconName = "canada-\(randomNumber)"
        print(iconName)
        
        icon.image = UIImage(named: "iconName")
        
        
        
        

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    
}



func randomNum() -> Int {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: 12)
    
    return randomNumber
    
    //Creates a random number to call from entree array
}
