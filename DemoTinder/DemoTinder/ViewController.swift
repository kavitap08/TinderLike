//
//  ViewController.swift
//  DemoTinder
//
//  Created by Trident Technolabs on 19/08/17.
//  Copyright © 2017 Trident Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    //MARK: - OUTLET AND VARIABLE -
    
    var arr = [[String : String]]()
    var index = Int()
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblDesignation: UILabel!
    
    //MARK: - VIEW LIFE CYCLE -

    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        index = 0
        iniitializeArray()
        
        
        let swipeGestureRight = UISwipeGestureRecognizer(target: self, action:#selector(ViewController.respondToSwipeGesture(_:)) )
        swipeGestureRight.direction = UISwipeGestureRecognizerDirection.right
        self.view .addGestureRecognizer(swipeGestureRight)
        
        let swipeGestureLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeGestureLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeGestureLeft)
        
        SetupView()
        //setupView(val: kREJECT)
    }

    //MARK: - CUSTOM METHOD -

    func setupView(val : String)
    {
        if index < arr.count
        {
            var dic = arr[index]
            dic.updateValue(val, forKey: kSTATUS)
            arr[index] = dic
            
            index = index + 1
            if index < arr.count
            {
                SetupView()
            }
        }
    }
    
    func SetupView()
    {
        var dic2 = arr[index]
        lblName.text = dic2[kNAME]
        lblGender.text = dic2[kSEX]
        lblDesignation.text = dic2[KSKILL]
       
        if lblGender.text == kMALE
        {
            imgProfile.image = imgMale

        }
        else
        {
            imgProfile.image = imgFemale
        }
    }
    
    func iniitializeArray()
    {
        arr = [
            
            [kNAME : "Clara Smith", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "John Harper", KSKILL : kPython , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Sagar Shah", KSKILL : kDjango , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Bob Thomas", KSKILL : kReact , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Sophie Laura", KSKILL : kReact , kSEX : kFEMALE, kSTATUS : kREJECT],
            
            [kNAME : "Sammie Lopez", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Connie Jones", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Camille Rowe", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Joana Silver", KSKILL : kPython , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Sasha Doe", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            
            
            [kNAME : "Gaby Simone", KSKILL : kReact , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Chloe Isabella", KSKILL : kReact , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "George Stanley", KSKILL : kDjango , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Dominic Hope", KSKILL : kDjango , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Sandra Bonhomme", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            
            
            [kNAME : "Sophie Gerbault", KSKILL : kReact , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Sarah Seemore", KSKILL : kReact , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Rachel Green", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Josephine Taylor", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Jay Jiang", KSKILL : kDjango , kSEX : kMALE, kSTATUS : kREJECT],
            
            [kNAME : "Hunter Dickson", KSKILL : kReact , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Sam Gupta", KSKILL : kReact , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Tom Brady", KSKILL : kDjango , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Taylor Thompson", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Tatianna Marshall", KSKILL : kDjango , kSEX : kFEMALE, kSTATUS : kREJECT],
            
            [kNAME : "Eric Street", KSKILL : kPython , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Marine Simon", KSKILL : kPython , kSEX : kFEMALE, kSTATUS : kREJECT],
            [kNAME : "Ronald Duck", KSKILL : kPython , kSEX : kMALE, kSTATUS : kREJECT],
            [kNAME : "Jennifer Lopez", KSKILL : kPython , kSEX : kFEMALE, kSTATUS : kREJECT]
            
        ]
    }
    
    func respondToSwipeGesture(_ sender: UIGestureRecognizer)
    {
        if  let swipeGesture  =  sender as? UISwipeGestureRecognizer
        {
            
            switch  swipeGesture.direction
            {
                case UISwipeGestureRecognizerDirection.right:
                    
                    setupView(val: kACCEPT)
                    break
                    
                    
                case UISwipeGestureRecognizerDirection.left:
                    
                    setupView(val: kREJECT)
                    break

                    
                default:
                    break
            }
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

