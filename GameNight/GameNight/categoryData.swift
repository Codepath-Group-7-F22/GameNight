//
//  categoryData.swift
//  GameNight
//
//  Created by Lawrence Kwok on 11/4/22.
//

import Foundation

// placeholder for obtaining the categories (as of 11/04/22)
struct categoryData {
    static let categories: [String] = ["18XX", "4x", "80s", "Abstract", "Accessory", "Adult", "Adventure", "Aerial Warfare", "Age of Reason", "Aliens", "Alternate History", "American History", "American West", "Ancient", "Animals", "Apocalyptic", "Arabian", "Art", "Asymmetric", "Aviation", "Banking", "Battle Royale", "Bluffing", "Book", "Campaign", "Card Game", "Children's Game", "Christian", "Christmas", "City Building", "Civil War", "Civilization", "Cold war", "Collectible Components", "Colonial", "Combat", "Comic Book / Strip", "Competitive", "Cooperative", "Crime", "Cube Rail", "Cyberpunk", "Deduction", "Deluxe Edition", "Dexterity", "Dice", "Dinosaurs", "Drawing", "Drinking", "Dungeon Crawl", "Economic", "Educational", "Electronic", "Environmental", "Escape Room", "Espionage", "Expansion", "Exploration", "Family Game", "Fan Made", "Fantasy", "Farming", "Fighting", "Finance", "Food", "Game System", "Gamefound", "Gulf War", "Historic", "Horror", "Humor", "Industry/Manufacturing", "Kickstarter", "Korean War", "Law", "Legacy", "Letters", "Mad Scientist", "Mafia", "Math", "Mature / Adult", "Maze", "Medical", "Medieval", "Memory", "Mental Health", "Miniatures", "Modern Warfare", "Movies / TV / Radio theme", "Murder", "Murder/Mystery", "Music", "Mystery", "Mythology", "Napoleonic", "Nature", "Nautical", "Negotiation", "Ninjas", "Novel-based", "Number", "One vs Many", "Paranormal", "Party Game", "Pike and Shot", "Pirates", "Plants/Gardening", "Point Salad", "Political", "Post-Apocalyptic", "Post-Napoleonic", "Prehistoric", "Print & Play", "Prison Escape", "Promo", "Puzzle", "RPG", "Racing", "Real-time", "Religious", "Renaissance", "Resource Management", "Robots", "Roman Empire", "Romance", "Route Building", "Safari", "Sandbox", "Sci-Fi", "Screen Printed Meeples", "Semi-Cooperative", "Solo / Solitaire", "Space Exploration", "Spies/Secret Agents", "Sports", "Steampunk", "Storytelling", "Strategic-Level", "Tactical-Level", "Technology", "Territory Building", "Theme Park", "Tile Placement", "Time Travel", "Trains", "Transportation", "Travel", "Trivia", "Two player Only Game", "Undersea", "Video Game Theme", "Vietnam War", "Viking", "Wargame", "Werewolves", "Western", "Word Game", "World War I", "World War II", "World War III", "Writing / Dry Erase", "Zodiac", "Zombies", "Zone Control"]
    
    static var displayableCategories: [String] {
        self.categories.sorted(by: {$0 < $1})
    }
}
