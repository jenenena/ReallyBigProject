//
//  ViewController.swift
//  PartyApp
//
//  Created by Mills, Jenna on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{

    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        formatAlgorithm()
    }

    private func formatAlgorithm() -> Void
    {
        let title : String = "How to make a Swift app"
        
        let firstStep : String = "First, create a new swift project, a single view iOS app. Call it something happy, like 'PartyProject'."
        let secondStep : String = "Second, holding command and clicking, select the files AppDelegate, Assets, and Info.plist and create a new group from selection. Call it 'Resources'."
        let thirdStep : String = "Next, do the same with the files ending in 'storyboard' and call the group 'View'."
        let fourthStep : String = "Now do the same for the controller."
        let fifthStep : String = "Next, go to app settings and under Identity select the Info.plist file under Resources."
        let sixthStep : String = "Finally, make a Github repository and upload your new project! Don't forget to exclude the *.xcuserstate file."
        
        
        
        let algorithm = [firstStep, secondStep, thirdStep, fourthStep, fifthStep, sixthStep]
        
        let attributesDictionary = [NSAttributedString.Key.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
            //for (each) "step" in "algorithm"
        {
            let bullet : String = "🌞"
            let formattedStep :String = "\n\(bullet)  \(step)"
            //concatenation
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            attributedStringStep.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    
    
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
    
    
    
    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

