//
//  EpisodeVC.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import UIKit

class EpisodeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let viewModel = EpisodeVM()

    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
        setupVM()
        
    }
    private func setupUI() {
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func setupVM() {
        viewModel.getData()
        viewModel.updateUI = { [weak self] in
            guard let self = self else { return }
            self.tableView.reloadData()
            
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = viewModel.data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data.name
        return cell
    }
    
    

}
