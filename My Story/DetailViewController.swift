//
//  DetailViewController.swift
//  My Story
//
//  Created by Brandon Ballesteros on 2/26/23.
//

import UIKit

class DetailViewController: UIViewController {
    var detailInfo: Information?

    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let detailInfo = detailInfo{
            textView.text = detailInfo.paragraph
            imageView.image = detailInfo.image
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
