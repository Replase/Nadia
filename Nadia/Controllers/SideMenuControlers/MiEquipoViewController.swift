//
//  MiEquipoViewController.swift
//  Nadia
//
//  Created by Servicio Social on 19/05/22.
//

import UIKit

class MiEquipoViewController: UIViewController {

    @IBOutlet weak var exitBtn: UIBarButtonItem!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var sideMenuBtn: UIBarButtonItem!
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
        // Do any additional setup after loading the view.
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
