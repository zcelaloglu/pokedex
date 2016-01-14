//
//  PokemonDetalVC.swift
//  pokedex-by-devslopes
//
//  Created by Zafer Celaloglu on 12.01.2016.
//  Copyright © 2016 Zafer Celaloglu. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenceLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!

    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

       nameLbl.text = pokemon.name
       mainImg.image = UIImage(named: "\(pokemon.pokedexId)")

       pokemon.downloadPokemonDetails { () -> () in
            //this will be called after download is done
        }
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
