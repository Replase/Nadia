//
//  MusicViewController.swift
//  Nadia
//
//  Created by Servicio Social on 19/05/22.
//

import UIKit

class PosAndRotViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var exitBtn: UIBarButtonItem!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var sideMenuBtn: UIBarButtonItem!
    @IBOutlet weak var posicionesCollection: UICollectionView!
    
    var image: [String] = ["patron","patron","patron","patron","patron"]
    var texto: [String] = ["uno","dos","tres","cuatro","cinco"]
    var colors: [UIColor] = [.red,.green,.blue,.white,.cyan]
    
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
    
}

extension PosAndRotViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = posicionesCollection.dequeueReusableCell(withReuseIdentifier: "celdaCollection", for: indexPath) as! PosicionesCollectionViewCell
        cell.imageCollection.image = UIImage(named: self.image[indexPath])
        
    }
    
    
}
