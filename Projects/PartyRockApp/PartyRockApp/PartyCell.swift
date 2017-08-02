//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Admin on 7/28/17.
//  Copyright © 2017 TJSchoost. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImg: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImg.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
        
    }

}
