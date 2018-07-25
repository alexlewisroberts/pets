//
//  CollectionTableViewController.swift
//  collection
//
//  Created by Alex Roberts on 7/23/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class CollectionTableViewController: UITableViewController {

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		tableView.reloadData()
	}


	// MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return list.count
	}
	
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionCell", for: indexPath)
		
		// Configure the cell...
		let item = list[indexPath.row]
		cell.textLabel?.text = item
		
		return cell
	}
	

	// MARK: - Properties
	let list = ["giraffe","elephant","sea urchin", "mars bacteria 1", "mars bacteria 2","mars bacteria 3"]
}
