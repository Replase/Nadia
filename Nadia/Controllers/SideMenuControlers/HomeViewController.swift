//
//  HomeViewController.swift
//  Nadia
//
//  Created by Servicio Social on 19/05/22.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var exitBtn: UIBarButtonItem!
    @IBOutlet weak var sideMenuBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuBtn.target = revealViewController()
        sideMenuBtn.action = #selector(revealViewController()?.revealSideMenu)
        // Do any additional setup after loading the view.
        exitBtn.target = revealViewController()
        exitBtn.action = #selector(revealViewController()?.exitAll)
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
