//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Eray Erman on 4.08.2021.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var lButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didClickedCharacterButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CharacterVC")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didClickedLocationButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "LocationVC")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didClickedEpisodeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "EpisodeVC")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

