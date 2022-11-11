//
//  CategoryCollectionViewController.swift
//  GameNight
//
//  Created by Lawrence Kwok on 11/5/22.
//

import UIKit
import Parse
import Foundation
import AlamofireImage

class CategoryCollectionViewController: UICollectionViewController {
    
    var categoryName: String!
    var selectCategory: String!
    
    var queryGames = [] as! [game]
    
    struct Response: Codable {
        let count: Int
        let games: [game]
    }
    
    struct game: Codable {
        let id: String
        let name: String
        let price: String
        let min_players: Int
        let max_players: Int
        let min_playtime: Int
        let max_playtime: Int
        let min_age: Int
        let description: String
        let image_url: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "GameCollectionViewCell")
        //self.delegate = self
        //self.dataSource = self
        self.title = categoryName + " Games"
        
        let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        let width = (view.frame.size.width - layout.minimumInteritemSpacing * 2) / 3
        layout.itemSize = CGSize(width: width, height: width * 3/2)
        
        let address = "https://api.boardgameatlas.com/api/search?category=" + self.selectCategory as! String + "&limit=5&client_id=b6GpveZyti"
        print(address)
        if let url = URL(string: address) {
           URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
        let jsonDecoder = JSONDecoder()
        do {
            let parsedJSON = try jsonDecoder.decode(Response.self, from: data)
            for items in parsedJSON.games {
                self.queryGames.append(items)

            }
        } catch {
                    print(error)
                }
               }
           }.resume()
        }
        self.collectionView.reloadData()
    }
    
    @IBAction func returnTab(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
    /*
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    */

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return queryGames.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCollectionViewCell", for: indexPath) as! GameCollectionViewCell
        let game = queryGames[indexPath.item]
        let gameName = game.name
        let gameImage = URL(string: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629325193747.png")
        cell.gameName.text = gameName
        cell.gameImage.af_setImage(withURL: gameImage!)
        
    
        // Configure the cell
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
