//
//  MilestoneView.swift
//  CancerNavigator
//
//  Created by David Young-chan Kay on 4/26/15.
//  Copyright (c) 2015 David Young-chan Kay. All rights reserved.
//

import UIKit

public class MilestoneView : UIView {
    
    var milestone: Milestone?

    @IBOutlet weak var checkmarkButton: UIButton!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateDividingLine: UIView!
    
    func baseInit() {

        println("milestoneView.baseInit()")
        let options: [NSObject : AnyObject] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//        let options = nil
     	let views = NSBundle.mainBundle().loadNibNamed("MilestoneView", owner: self, options: options)
        let loadedView: UIView = views[0] as! UIView
        self.addSubview(loadedView)
//      [self addSubview:
//         [[[NSBundle mainBundle] loadNibNamed:@"MyCustomTimerView" 
//                                        owner:self 
//                                      options:nil] objectAtIndex:0]];

	//let label = UILabel()
        //label.transform = CGAffineTransformMakeRotation(CGFloat(degreesToRadians(-45)))
    }
        
    required public init(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      baseInit()
    }
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      baseInit()
    }
    
    public override func layoutSubviews() {
      super.layoutSubviews()
      println("MilestoneView layoutSubviews()")

    }

    //  let interval: CGFloat = 40
    //  var yOffset: CGFloat = 0
    //  let xPos: CGFloat = 0
    //  let StandardWidth: CGFloat = 120
    //  let StandardHeight: CGFloat = 40

    //  label.frame = CGRect(x: xPos, y: yOffset, width: StandardWidth, height: StandardHeight)

    //    //yOffset += interval


    //}

}
