//
//  ViewController.swift
//  NanoC1
//
//  Created by Thomas Arya on 04/03/20.
//  Copyright © 2020 Thomas Arya. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var gifff: UIImageView!
    @IBOutlet weak var btngirl: UIButton!
    @IBOutlet weak var btnboy: UIButton!
    @IBOutlet weak var cewe: UIImageView!
    @IBOutlet weak var cowo1: UIImageView!
    @IBOutlet weak var gndr: UILabel!
    @IBOutlet weak var lblchat: UILabel!
    @IBOutlet weak var btngenerate: UIButton!
    @IBOutlet weak var label: UIImageView!
    @IBOutlet weak var backa: UIImageView!
    @IBOutlet weak var isheng: UIButton!
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var sharebut: UIButton!
    @IBOutlet weak var prevbtn: UIButton!
    @IBOutlet weak var bookmarkbut: UIButton!
    @IBOutlet weak var pickupline: UILabel!
    @IBOutlet weak var categorybut: UIButton!
    @IBOutlet weak var bookmarkpageView: UIButton!
    @IBOutlet weak var arrow1: UIImageView!
    @IBOutlet weak var labelinfo: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    
    var counter = 0
    var counterl = 0
    var counterw = 0
    
    var category = "Category"

    var idx = -1
    var boy = 0
    var girl = 0
    
    
    
    
    
    let impact = UIImpactFeedbackGenerator()
    
    let pckplne = ["There’s only one thing I want to change about you, and that’s your last name.","I'm not a Photographer, but I can Take Our Pic Together in Our Wedding","Let's Flip a Coin. Head's you are mine, tail's I'm yours", "Do you like to sleep? if it yes, proly we should sleep together", "Even if there wasn't any gravity on Earth, I would still fall for you","I may not be a genie, but I can make your wish come true","Are you a magician? Because whenever I look at you, everyone else disappears!","Are you a parking ticket? ‘Cause you’ve got fine written all over you.","Aside from being sexy, what do you do for a living?","Is your name winter? Because you’ll be coming soon."]
    let pckplnecasual = ["Did it hurt? When you fell from heaven?","Can I follow you home? Cause my parents always told me to follow my dreams.","If nothing lasts forever, will you be my nothing?", "Hello, I’m a thief, and I’m here to steal your heart.","You don’t need keys to drive me crazy.", "Are you a dictionary? Cause you’re adding meaning to my life.","Somebody call the cops, because it’s got to be illegal to look that good!","My buddies bet me that I wouldn’t be able to start a conversation with the hottest person in the bar. Wanna buy some drinks with their money?"]
    let pickuplinedirty = ["You’re so hot, my zipper is falling for you.","They say that kissing is a language of love, so would you mind starting a conversation with me?","Your body is made up of 70% water. . .and I’m thirsty.","Are you undressing me with your eyes?!","I lost my keys… Can I check your pants?","That’s a nice shirt. Can I try it on after we have sex?","Are you an elevator? Because I’ll go up and down on you.","With school, I just want an A. With you, I just want to F.","Do you drink soda? Because you look so-da-licious.","I’m not feeling myself today. Can I feel you instead?","This might seem corny but you’re making me horny.","My name isn’t Elmo, but you can tickle me any time you want to.","Want to play conductor? You be the engineer and I’ll go choo choo."]
    let pickuplinetinder = ["Kiss me if I’m wrong, but dinosaurs still exist, right?","I’m No Organ Donor But I’d Be Happy To Give You My Heart.","I Don’t Believe In Love At First Sight, But I’m Willing To Make An Exception In Your Case.","Of All Your Beautiful Curves, Your Smile Is My Favorite.","Do You Have A Bandaid? Cause I Scrapped My Knees Falling For You.","I’m No Mathematician, But I’m Pretty Good With Numbers. Tell You What, Give Me Yours And Watch What I Can Do With It.","Just be creative with their name pal, you can do it!"]
    let pickuplinecheesy = ["They say Disneyland is the happiest place on earth. Well apparently, no one has ever been standing next to you.", "Is your name Google? Because you have everything I’ve been searching for.", "Hello. Cupid called. He wants to tell you that he needs my heart back. ","Are you a dictionary? Cause you’re adding meaning to my life.","Please Keep Your Distance. I Might Fall For You.","What’s Your Name? Or Can I Call You “Mine”?","Can I Tie Your Shoes? I Don’t Want You Falling For Anyone Else."]
    let pickuplineclever = ["I Would Flirt With You, But I’d Rather Seduce You With My Awkwardness.","I Know What You’re Thinking…”Sure, He Looks Nice Enough, But Can He Ride A Unicycle?” And The Answer Is No.","Wanna Eat Cookie Dough Together Some Time?","Is Your Name Ariel? Because We Mermaid For Each Other","Your Eyes Are Like IKEA…I Get Lost In Them."]
    let pickuplinedark = ["Can I be reincarnated as your child? I would like to suck yours on then till I am old","Smell this rag! I’m sure you can inhale the chloroform.","I’ve been noticing you noticing me noticing you noticing me.","If you wouldn’t mind, I would like to change the multiple noticing into notices of orgasms for you how do I get the STUD? I only have STD and U are all I need!","Your outfit is so dazzling. Do you Know how it can look better? Rumpled in a bunch on mysteries that haven’t been solved.","You want to call the cops. Go ahead, see who comes first.","I am trying to establish a porn network. Will you do me the honor of being my first client?","I’m having trouble thinking straight. All the blood from my brain have been drained to give me a boner.","Hey, I notice an abundance of meal down your crotch. Will you like me to eat you out?","Is your daddy a baker? Because you got some nice buns."]
    var pickuplineprev = [""]
    var pickuplineBookmark = Array<String>()
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        categorybut.setTitle(category, for: .normal)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        cowo1.alpha = 1
        cewe.alpha = 0
        label.alpha = 0
        backa.alpha = 1
        prevbtn.isHidden = true
        pickupline.isHidden = true
        sharebut.isHidden = true
        prevbtn.isHidden = true
        bookmarkbut.isHidden = true
        categorybut.isHidden = true
        arrow1.alpha = 1
        labelinfo.alpha = 1
        desc.alpha = 1
        self.gifff.alpha = 0
        self.gifff.loadGif(name: "baymax")
        
        
        
        
        //warna segmented
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemOrange]
        //        let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIFont.boldSystemFont(ofSize: 24)]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .selected)
        //          UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes1, for: .selected)
        //        UISegmentedControl.appearance().setTitle
        // Do any additional setup after loading the view.
    }
    
    @IBAction func generate(_ sender: Any) {
        self.pickupline.isHidden = true
        self.gifff.alpha = 1
        //button ke go for it
        
        
        
        if (counter == 0){
            showAlert()
        }
        else{
            
            btngenerate.setTitle("Nah, Next", for: .normal)
            
            
            
            
            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (timer) in
                self.pickupline.isHidden = false
                self.gifff.alpha = 0
                
                UIView.animate(withDuration: 1) {
                    self.sharebut.isHidden = false
                    self.prevbtn.isHidden = false
                    self.bookmarkbut.isHidden = false
                    self.pickupline.isHidden = false
                    self.categorybut.isHidden = false
                    self.desc.isHidden = true
                }
            }
            bookmarkbut.setImage(UIImage.init(systemName: "heart"), for: .normal)
            self.impact.impactOccurred()
        }
        
        switch category {
        case "Casual":
            let randomArray = Int.random(in: 0...pckplnecasual.count-1)
            pickupline.text = pckplnecasual[randomArray]
            pickuplineBookmark.append(pickupline.text!)
            print(pickuplineBookmark)
        case "Cheesy":
            let randomArray = Int.random(in: 0...pickuplinecheesy.count-1)
            pickupline.text = pickuplinecheesy[randomArray]
            pickuplineBookmark.append(pickupline.text!)
            print(pickuplineBookmark)
        case "Tinder":
            let randomArray = Int.random(in: 0...pickuplinetinder.count-1)
            pickupline.text = pickuplinetinder[randomArray]
            pickuplineBookmark.append(pickupline.text!)
            pickuplineBookmark.append(pickupline.text!)
            print(pickuplineBookmark)
        case "Clever":
            let randomArray = Int.random(in: 0...pickuplineclever.count-1)
            pickupline.text = pickuplineclever[randomArray]
            pickuplineBookmark.append(pickupline.text!)
            print(pickuplineBookmark)
        case "Lame":
            let randomArray = Int.random(in: 0...pickuplinedirty.count-1)
            pickupline.text = pickuplinedirty[randomArray]
            pickuplineBookmark.append(pickupline.text!)
            print(pickuplineBookmark)
        case "Dark":
            let randomArray = Int.random(in: 0...pickuplinedark.count-1)
            pickupline.text = pickuplinedark[randomArray]
            pickuplineBookmark.append(pickupline.text!)
            print(pickuplineBookmark)
        default:
            let randomArray = Int.random(in: 0...pckplne.count-1)
            pickupline.text = pckplne[randomArray]
            pickuplineBookmark.append(pickupline.text!)
            print(pickuplineBookmark)
        }
        idx += 1
        
        
    }
//    var pickuplineBookmark = self.pickupline.text
    
    
    
    //SEGMENTED
//    @IBAction func segmentedbg(_ sender: UISegmentedControl) {
//        switch sender.selectedSegmentIndex {
//        case 0:
//            gndr.text = "Pick-Up Lines for,"
//            self.bg.image = #imageLiteral(resourceName: "bgasli")
//
//            UIView.animate(withDuration: 0.8) {
//                self.cowo1.alpha = 1.0
//                self.label.alpha = 0
//                self.cewe.alpha = 0
//                self.backa.alpha = 1.0
//            }
//            UIView.animate(withDuration: 0.8) {
//                self.gndr.textColor = UIColor.systemOrange
//                self.lblchat.text = "Hey Boy, "
//                self.btngenerate.backgroundColor = UIColor.systemIndigo
//
//
//            }
//            counter += 1
//            counterl += 1
//            counterw = 0
//
//            if counterl > 0 {
//                btnboy.backgroundColor = UIColor.systemIndigo
//                //iniiiii
//                btngirl.backgroundColor = UIColor.systemIndigo
//            }
//        case 1:
//            gndr.text = "Pick-Up Lines for,"
//            self.bg.image = #imageLiteral(resourceName: "bggirl")
//
//            UIView.animate(withDuration: 0.8) {
//                self.cewe.alpha = 1.0
//                self.cowo1.alpha = 0
//                self.label.alpha = 1.0
//                self.backa.alpha = 0
//                self.labelinfo.alpha = 0
//                self.arrow1.alpha = 0
//            }
//            UIView.animate(withDuration: 0.8) {
//                self.gndr.textColor = UIColor.systemPurple
//                self.lblchat.text = "Hey Girl, "
//                self.btngenerate.backgroundColor = UIColor.systemPurple
//
//            }
//            counter += 1
//            counterw += 1
//            counterl = 0
//            if counterw > 0 {
//                btngirl.backgroundColor = hexStringToUIColor(hex: "#000000")
//            }
//        default:
//            break
//        }
        //    @IBAction func segmentedbg(_ sender: UISegmentedControl) {
        //        switch sender.selectedSegmentIndex {
        //        case 0:
        //            gndr.text = "Pick-Up Lines for,"
        //            lblchat.text = "What should I say to my Boy?"
        //            gndr.textColor = UIColor.systemOrange
        //            break
        //        case 1:
        //            gndr.text = "Pick-Up Lines for,"
        //            lblchat.text = "What should I say to my Girl?"
        //            gndr.textColor = UIColor.systemIndigo
        //            break
        //        default:
        //            break
        //        }
    //}
    func showAlert() {
        UIView.animate(withDuration: 0.8) {
            let alert = UIAlertController(title: "Warning", message: "Pick your Crush's Gender First!", preferredStyle: .alert)
            //        let action = UIAlertAction(title: "No", style: .cancel, handler: nil)
            let choices = UIAlertAction(title: "Yes", style: .destructive, handler: nil)
            //        alert.addAction(action)
            alert.addAction(choices)
            self.present(alert, animated: true, completion: nil)
        }
    }
    func showAlert1() {
        UIView.animate(withDuration: 0.8) {
            let alert = UIAlertController(title: "Warning", message: "Cannot Use the Previous Button Anymore", preferredStyle: .alert)
            //        let action = UIAlertAction(title: "No", style: .cancel, handler: nil)
            let choices = UIAlertAction(title: "Okay", style: .destructive, handler: nil)
            //        alert.addAction(action)
            alert.addAction(choices)
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func boybtn(_ sender: Any) {
        
        self.impact.impactOccurred()
        boy = 1
        let colorfontboy = hexStringToUIColor(hex: "#E48F62")
        let btncolboy = hexStringToUIColor(hex: "#424393")
        let btngenerate = hexStringToUIColor(hex: "#E48F62")
        let btnslctd = hexStringToUIColor(hex: "#7174C6")
        UIView.animate(withDuration: 0.8) {
            self.cowo1.alpha = 1.0
            self.label.alpha = 0
            self.cewe.alpha = 0
            self.backa.alpha = 1.0
            self.isheng.alpha = 0
            self.labelinfo.alpha = 0
            self.arrow1.alpha = 0
            self.desc.alpha = 0
        }
        UIView.animate(withDuration: 0.5) {
            self.gndr.text = "Pick-Up Lines for,"
            self.bg.image = #imageLiteral(resourceName: "bgasli") 
            self.gndr.textColor = colorfontboy
            self.lblchat.text = "Hey Boy, "
            self.btngenerate.backgroundColor = btngenerate
            self.categorybut.backgroundColor = btnslctd
            self.bookmarkpageView.tintColor = colorfontboy
        }
        counter += 1
        counterl += 1
        counterw = 0
        
        if counterl > 0 {
            btnboy.backgroundColor = btnslctd
            //iniiiii
            btngirl.backgroundColor = btncolboy
            
            
        }
        
    }
    
    @IBAction func girlbtn(_ sender: Any) {
        girl = 1
        
        let colorfontgirl = hexStringToUIColor(hex: "#65937E")
        let btncolgirl = hexStringToUIColor(hex: "#6122FE")
        let btngenerate = hexStringToUIColor(hex: "#65937E")
        let btnselectd = hexStringToUIColor(hex: "#A826D8")
        self.impact.impactOccurred()
        UIView.animate(withDuration: 0.5) {
            self.cewe.alpha = 1.0
            self.cowo1.alpha = 0
            self.label.alpha = 1.0
            self.backa.alpha = 0
            self.isheng.alpha = 0
            self.labelinfo.alpha = 0
            self.arrow1.alpha = 0
            self.desc.alpha = 0
        }
        UIView.animate(withDuration: 0.8) {
            self.gndr.text = "Pick-Up Lines for,"
            self.bg.image = #imageLiteral(resourceName: "bggirl")
            self.gndr.textColor = colorfontgirl
            self.lblchat.text = "Hey Girl, "
            self.btngenerate.backgroundColor = btngenerate
            self.categorybut.backgroundColor = btnselectd
            self.bookmarkpageView.tintColor = colorfontgirl
            
        }
        
        counter += 1
        counterw += 1
        counterl = 0
        if counterw > 0 {
            btngirl.backgroundColor = btnselectd
            btnboy.backgroundColor = btncolgirl
        }
    }
    //    override func copy(_ sender: Any?) {
    //    let board = UIPasteboard.general
    //    board.string = pickupline
    //    let menu = UIMenuController.shared
    //    menu.setMenuVisible(false, animated: true)
    //    }
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    
    class CopyableLabel: UILabel {
        let impact = UIImpactFeedbackGenerator()
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.sharedInit()
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            self.sharedInit()
        }
        
        func sharedInit() {
            self.isUserInteractionEnabled = true
            self.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(self.showMenu)))
        }
        
        @objc func showMenu(sender: AnyObject?) {
            self.becomeFirstResponder()
            
            let menu = UIMenuController.shared
            
            if !menu.isMenuVisible {
                menu.setTargetRect(bounds, in: self)
                menu.setMenuVisible(true, animated: true)
                self.impact.impactOccurred()
            }
        }
        
        override func copy(_ sender: Any?) {
            let board = UIPasteboard.general
            
            board.string = text
            
            let menu = UIMenuController.shared
            
            menu.setMenuVisible(false, animated: true)
            self.impact.impactOccurred()
            
        }
        
        override var canBecomeFirstResponder: Bool {
            self.impact.impactOccurred()
            return true
        }
        
        override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
            self.impact.impactOccurred()
            return action == #selector(UIResponderStandardEditActions.copy)
        }
    }
    
    @IBAction func btnswipeup(_ sender: Any) {
        if(counter == 0){
            showAlert()
        }else if(counter > 0){
            UIView.animate(withDuration: 0.5) {
                self.isheng.alpha = 0
                self.isheng.frame.origin.y += 270
                
            }
        }
    }
    
    @IBAction func prevbtn(_ sender: Any) {
        if idx>0{
            pickupline.text = pickuplineBookmark[idx-1]
            print(pickuplineBookmark[idx-1])
            print(idx)
            idx -= 1
        }else{
            showAlert1()
        }
    }
    @IBAction func sharebtn(_ sender: Any) {
        // text to share
        
        // set up activity view controller
        let textToShare = ["\(pickupline.text!)"]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook,
                                                         UIActivity.ActivityType.postToTwitter,
                                                         UIActivity.ActivityType.copyToPasteboard]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
    }
    @IBAction func bookmarkbtn(_ sender: Any) {
        bookmarkbut.setImage(UIImage.init(systemName: "heart.fill"), for: .normal)
        self.impact.impactOccurred()
        
    }
    
    @IBAction func catBtn(_ sender: Any) {
        //categorybut.text = curCategory
    }
   
    
    @IBAction func unwindToVC(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.destination
        // Use data from the view which initiated the unwind segue
    }
//    func prepareCategory(for segue: UIStoryboardSegue, sender: Any?) {
//        if let identifier = segue.identifier{
//            if identifier == "toCategory"{
//                if let destination = segue.destination as? ViewCategories{
//                    destination.doneBtn = self.boy
//                }
//            }
//        }
//    }
    
}



