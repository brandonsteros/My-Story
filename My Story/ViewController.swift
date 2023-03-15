//
//  ViewController.swift
//  My Story
//
//  Created by Brandon Ballesteros on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    let myBioButton = Information(paragraph: "Scott Pilgrim is a slacker and part-time musician who lives in Toronto, Ontario, and plays bass ‍in a band. He falls in love with American delivery girl Ramona Flowers but must defeat her seven evil exes in order to date her in peace.", image: UIImage(named: "Bio"))
    let enemyButton = Information(paragraph: "Enemies: Gideon Graves, Roxie Ritcher, Todd Ingram, Ken Katayanagi, Kyle Katayanagi, Lucas Lee, Matthew Patel", image: UIImage(named: "Enemies"))
    let seeMoreButton = Information(paragraph: "Book series, Video Game, Comics, Movie, Show", image: UIImage(named: "See more"))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTap(_ sender: Any) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue",
        let segueButton = sender as? UIButton,
        let detailViewController = segue.destination as? DetailViewController{
            if segueButton.tag == 0{
                detailViewController.detailInfo = myBioButton
            }
            else if segueButton.tag == 1{
                detailViewController.detailInfo = enemyButton
            }
            else if segueButton.tag == 2{
                detailViewController.detailInfo = seeMoreButton
            }
            else{
                print("No selection made")
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    
    

}

