//
//  ViewController.swift
//  TestSideMenu
//
//  Created by dev_sinu on 2017. 2. 6..
//  Copyright © 2017년 com.example. All rights reserved.
//  출처 : https://github.com/jonkykong/SideMenu

import UIKit
import SideMenu

class ViewController: UIViewController {

    @IBAction func ViewSideMenu(_ sender: Any) {
        present(SideMenuManager.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SideMenuManager.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        
        SideMenuManager.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        // Set up a cool background image for demo purposes
        SideMenuManager.menuAnimationBackgroundColor = UIColor.white
        
        SideMenuManager.menuFadeStatusBar = false
        SideMenuManager.menuLeftNavigationController?.leftSide = false
        SideMenuManager.menuPresentMode = .viewSlideInOut
        SideMenuManager.menuWidth = self.view.frame.size.width / 2.5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

