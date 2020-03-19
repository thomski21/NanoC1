//
//  ViewCategories.swift
//  NanoC1
//
//  Created by Thomas Arya on 15/03/20.
//  Copyright © 2020 Thomas Arya. All rights reserved.
//

import UIKit

class ViewCategories: UIViewController {

    @IBOutlet weak var casualbtn: UIButton!
    @IBOutlet weak var cheesybtn: UIButton!
    @IBOutlet weak var tinderbtn: UIButton!
    @IBOutlet weak var cleverbtn: UIButton!
    @IBOutlet weak var lamebtn: UIButton!
    @IBOutlet weak var darkbtn: UIButton!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var choosenCtgory: UILabel!
    @IBOutlet weak var gifCategory: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gifCategory.loadGif(name: "new")

        // Do any additional setup after loading the view.
    }
    var boyclr = 0
    var girlclr = 0
    var curCategory = ""

    /*
    // MARK: -
     Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func selectCategory(_ sender: UIButton) {
        switch sender {
        case casualbtn:
            self.curCategory = "Casual"
            choosenCtgory.text = "Casual"
            self.gifCategory.loadGif(name: "source")
        case cheesybtn :
            self.curCategory = "Cheesy"
            choosenCtgory.text = "Cheesy"
            self.gifCategory.loadGif(name: "asdasd")
        case tinderbtn :
            self.curCategory = "Tinder"
            choosenCtgory.text = "Tinder"
            self.gifCategory.loadGif(name: "c1d-4ea7e935dcd92bc738b328534431cd88")
        case cleverbtn :
            self.curCategory = "Clever"
            choosenCtgory.text = "Clever"
            self.gifCategory.loadGif(name: "unnamed")
        case lamebtn :
            self.curCategory = "Lame"
            choosenCtgory.text = "Lame"
            self.gifCategory.loadGif(name: "giphy-9")
        case darkbtn :
            self.curCategory = "Dark"
            choosenCtgory.text = "Dark"
            self.gifCategory.loadGif(name: "giphy-3")
        default:
           self.curCategory = "Category"
            choosenCtgory.text = ""
        }
    }
    
    
    @IBAction func parsingData(_ sender: Any) {
        performSegue(withIdentifier: "unwindVC1", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            if identifier == "unwindVC1"{
                if let destination = segue.destination as? ViewController{
                    destination.category = self.curCategory
                }
            }
        }
    }

}
