//
//  ViewController.swift
//  TimerApp
//
//  Created by Salih Yusuf Göktaş on 26.05.2023.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var ciktiLabel: UILabel!
	@IBOutlet weak var baslaStyle: UIButton!
	
	var sayici:Timer?
	var sayac1:Int = 1
	
	override func viewDidLoad() {
		super.viewDidLoad()

		baslaStyle.layer.cornerRadius = 15.0
		baslaStyle.layer.shadowColor = UIColor.darkGray.cgColor
		baslaStyle.layer.shadowRadius = 4
		baslaStyle.layer.shadowOpacity = 0.5
		baslaStyle.layer.shadowOffset = CGSize(width: 0, height: 0)
		
	}

	@IBAction func basla(_ sender: Any) {
		
		sayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ileriSay), userInfo: nil, repeats: true)
		
	}

	@objc func ileriSay() {
		ciktiLabel.text = String(sayac1)
		sayac1+=1
		
		if sayac1 > 6 {
			sayici?.invalidate()
			ciktiLabel.text = "Süre Bitti"
			sayac1 = 1
		}
		
		
	}
	
}


