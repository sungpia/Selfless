//
//  MainViewController.swift
//  Selfish
//
//  Created by Alejandro Silveyra on 2/28/15.
//  Copyright (c) 2015 ChungSungwon. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var sidebarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sidebarButtonPressed(sender: AnyObject) {
        //let colors = [
        //    UIColor.blueColor(),
        //    UIColor.redColor()
       // ]
        
        //var  callout:RNFrostedSidebar = RNFrostedSidebar (images: nil, selectedIndices: <#AnyObject!#>)
        
        //RNFrostedSidebar *callout = [[RNFrostedSidebar alloc] initWithImages:images selectedIndices:self.optionIndices borderColors:colors];
        //    RNFrostedSidebar *callout = [[RNFrostedSidebar alloc] initWithImages:images];
        //callout.delegate = self;
        //    callout.showFromRight = YES;
        //[callout show];
    
    }
    
    //#pragma mark - RNFrostedSidebarDelegate
    
    - (void)sidebar:(RNFrostedSidebar *)sidebar didTapItemAtIndex:(NSUInteger)index {
    NSLog(@"Tapped item at index %lu",(unsigned long)index);
    if (index == 3) {
    [sidebar dismissAnimated:YES completion:nil];
    }
    }
    
    - (void)sidebar:(RNFrostedSidebar *)sidebar didEnable:(BOOL)itemEnabled itemAtIndex:(NSUInteger)index {
    if (itemEnabled) {
    [self.optionIndices addIndex:index];
    }
    else {
    [self.optionIndices removeIndex:index];
    }
    }
    
}

