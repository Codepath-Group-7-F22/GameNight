//
//  CategoryCollectionViewController.swift
//  GameNight
//
//  Created by Lawrence Kwok on 11/5/22.
//

import UIKit
import Parse
import Foundation

private let reuseIdentifier = "Cell"

class CategoryCollectionViewController: UICollectionViewController {

    var categoryName: String!
    var selectCategory: String!
    
    var queryGames = [] as! [[game]]
    
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

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.title = categoryName + " Games"
        let address = "https://api.boardgameatlas.com/api/search?category=" + selectCategory + "&limit=2&client_id=b6GpveZyti"
        if let url = URL(string: address) {
           URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
        let jsonDecoder = JSONDecoder()
        do {
            let parsedJSON = try jsonDecoder.decode(Response.self, from: data)
            //print(parsedJSON.count)
            //print(parsedJSON.games)
            for items in parsedJSON.games {
                print(parsedJSON.games)
                //print(parsedJSON.games[items].)
                self.queryGames.append(parsedJSON.games)
            }
            //print(self.queryGames[1].id)
        } catch {
                    print(error)
                }
               }
           }.resume()
        }
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

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
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
