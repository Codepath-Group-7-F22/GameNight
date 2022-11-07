//
//  GameMeetUpTableViewCell.swift
//  GameNight
//
//  Created by lester on 11/6/22.
//

import UIKit

class GameMeetUpTableViewCell: UITableViewCell {
    
    @IBOutlet weak var gameEventLabel: UILabel!

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var startDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
