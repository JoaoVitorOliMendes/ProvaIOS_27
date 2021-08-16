//
//  CelulaTableViewCell.swift
//  Prova3B1_27
//
//  Created by COTEMIG on 16/08/21.
//

import UIKit

class CelulaTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblDescricao: UILabel!
    @IBOutlet weak var lblPreco: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
