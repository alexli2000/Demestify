//
//  ViewController.swift
//  Demestify
//
//  Created by Alexander Li on 2015-11-07.
//  Copyright © 2015 Alexander Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    @IBOutlet weak var shopButton: UIButton!
    
    @IBOutlet weak var healthBarButton: UIButton!
    @IBOutlet weak var healthBarImageView: UIImageView!
    var hbImageView:UIImageView!
    @IBOutlet weak var moneyBarButton: UIButton!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var caregiverModuleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        configureViews()
    }
    
    //MARK: - Configure Views
    func configureViews() {
        configureHealthBar()
        configureMoneyLabel()
    }
    
    func configureHealthBar() {
        healthBarImageView.hidden = true
        
        hbImageView = UIImageView(frame: CGRect(x: healthBarImageView.frame.origin.x, y: healthBarImageView.frame.origin.y, width: 0 * healthBarImageView.frame.width, height: healthBarImageView.frame.height))
        hbImageView.image = UIImage(named: "healthBar-inside")
        
        self.view.addSubview(hbImageView)
        animateHealthBar()
    }
    
    func animateHealthBar() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.hbImageView.frame = CGRect(x: self.healthBarImageView.frame.origin.x, y: self.healthBarImageView.frame.origin.y, width: CGFloat(self.appDelegate.pet.petHealth!) * self.healthBarImageView.frame.width, height: self.healthBarImageView.frame.height)
            }) { (finished) -> Void in
                print("Animation finished")
        }
    }
    
    func configureMoneyLabel() {
        moneyLabel.text = appDelegate.pet.petMoney?.description
    }
    
    //MARK: Buttons
    @IBAction func shopButtonTapped(sender: AnyObject) {
        
        
    }
    
    @IBAction func playButtonTapped(sender: AnyObject) {
        
        
    }

    @IBAction func caregiversModuleButtonTapped(sender: AnyObject) {
        /*
        let navigationController = self.storyboard!.instantiateViewControllerWithIdentifier("storeNavController") as! UINavigationController
        let formSheetController = MZFormSheetPresentation(contentViewController: navigationController)
        formSheetController.contentViewSize = CGSizeMake(300, 393)
        self.presentViewController(formSheetController, animated: true, completion: nil)
        */
    }
    
}

