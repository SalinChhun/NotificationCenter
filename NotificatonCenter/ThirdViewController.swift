//
//  ThirdViewController.swift
//  NotificatonCenter
//
//  Created by PVH_002 on 29/9/23.
//

import UIKit

class ThirdViewController: UIViewController {

    let notificationCenter = NotificationCenter.default
    let notificationName = Notification.Name("string")
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationCenter.addObserver(self, selector: #selector(changeBg(notification: )), name: notificationName, object: nil)
    }
    
    deinit {
        notificationCenter.removeObserver(self, name: notificationName, object: nil)
    }
    
    @objc func changeBg(notification: NSNotification) {
        view.backgroundColor = notification.userInfo?["bg"] as! UIColor
    }


}
