//
//  ViewController.swift
//  Emoji Dictionaty
//
//  Created by Richard Ziegler on 11/20/16.
//  Copyright © 2016 Richard Ziegler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Start Table View Code
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    var emojis = ["💩", "😇","😎","🐬"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Emoji Dictionary"
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    // Segue code
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emojiCell = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emojiCell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.bigEmoji = sender as! String
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

