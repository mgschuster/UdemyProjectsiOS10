//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Admin on 7/28/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://yt3.ggpht.com/-JIbOLj4dTr8/AAAAAAAAAAI/AAAAAAAAAAA/V0yMwxBj3jc/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OY0Mk9kTs8M?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Erbody But Me")
        let p2 = PartyRock(imageURL: "https://yt3.ggpht.com/-JIbOLj4dTr8/AAAAAAAAAAI/AAAAAAAAAAA/V0yMwxBj3jc/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/r9yrBp2HACY?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "No K")
        let p3 = PartyRock(imageURL: "https://yt3.ggpht.com/-NU9bGJAfBIY/AAAAAAAAAAI/AAAAAAAAAAA/yFybStf1moI/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nkFPiu400bk?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Dysfunctional")
        let p4 = PartyRock(imageURL: "https://yt3.ggpht.com/-NU9bGJAfBIY/AAAAAAAAAAI/AAAAAAAAAAA/yFybStf1moI/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cHXFARUOYY0?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Caribou Lou")
        let p5 = PartyRock(imageURL: "https://yt3.ggpht.com/-V1o8kAKkVmI/AAAAAAAAAAI/AAAAAAAAAAA/lMEdzSigaHI/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9zEGeZnRswM?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Worldwide Choppers")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }



}

