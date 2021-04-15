//
//  ViewController.swift
//  ExampleAPI
//
//  Created by Lucas Werner Kuipers on 15/04/2021.
//

import UIKit
import API

class ViewController: UIViewController {
	
	@IBOutlet weak var totalCoinsLabel: UILabel!
	var coins = [Coin]()
	
	
	@IBAction func updateCoinsList(_ sender: Any) {
		fetchData()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		fetchData()
		setupUI()
	}
	func fetchData() {
		coins = API.requestCoinList()
		print(coins)
	}
	func setupUI() {
		totalCoinsLabel.text = "Total of coins: \(coins.count)"
	}

}

