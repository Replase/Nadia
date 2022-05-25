//
//  ReglamentoViewController.swift
//  Nadia
//
//  Created by Servicio Social on 19/05/22.
//

import UIKit

class ReglamentoViewController: UIViewController {

    @IBOutlet weak var exitBtn: UIBarButtonItem!
    @IBOutlet weak var sideMenuBtn: UIBarButtonItem!
    @IBOutlet weak var navBar: UINavigationBar!
    
    //Botón
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuBtn.target = revealViewController()
                sideMenuBtn.action = #selector(revealViewController()?.revealSideMenu)
        navBar?.standardAppearance.backgroundColor = UIColor.clear
            navBar?.standardAppearance.backgroundEffect = nil
            navBar?.standardAppearance.shadowImage = UIImage()
            navBar?.standardAppearance.shadowColor = .clear
            navBar?.standardAppearance.backgroundImage = UIImage()
        exitBtn.target = revealViewController()
        exitBtn.action = #selector(revealViewController()?.exitAll)
        // Do any additional setup after load
        // Do any additional setup after loading the view.
    }
    
    @IBAction func irEnlace(_ sender: UIButton) {
        if let url = URL(string: "http://www.apple.com") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:])
            }
        }
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
