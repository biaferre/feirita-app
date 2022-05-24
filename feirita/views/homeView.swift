//
//  homeView.swift
//  feirita
//
//  Created by Bof on 19/05/22.
//

import Foundation
import UIKit

class homeView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        zonaSearchView.isHidden = true
        profileView.isHidden = true
        
        self.feiraLovers.dataSource = self
        self.feiraLovers.delegate = self
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch? = touches.first
        if touch?.view != profileView {
            profileView.isHidden = true
        }
        if touch?.view != zonaSearchView {
            zonaSearchView.isHidden = true
        }
    }
    
    @IBOutlet var zonaSearchView: UIView!
    @IBOutlet var profileView: UIView!
    @IBOutlet var userName: UITextField!
    @IBOutlet var userPlace: UITextField!

    @IBOutlet var place1: UITextField!
    @IBOutlet var place2: UITextField!
    @IBOutlet var place3: UITextField!
    
    @IBOutlet var aboutMe: UITextView!
    
    @IBOutlet var zonaNort: UIButton!
    @IBOutlet var zonaSul: UIButton!
    @IBOutlet var zonaOeste: UIButton!
    
    @IBOutlet var feiraLovers: UICollectionView!
    
    @IBAction func openProfile(_ sender: UIButton) {
        profileView.isHidden = false
    }
    @IBAction func openZona(_ sender: UIButton) {
        zonaSearchView.isHidden = false
    }
    
    let dict: [Person] = [Person("lupita","Ana Lúcia", "pina", "zona sul"),Person("florence","Juliana","casa amarela", "zona norte"),Person("dominic","Luis Esteves", "san martin", "zona oeste")]
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let viewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "personCell", for: indexPath) as! feiraloverViewCellCollectionViewCell
        let pessoa = dict[indexPath.row]
        viewCell.image.image = UIImage(named: pessoa.img)
        viewCell.arrumar()
        
        viewCell.layer.cornerRadius = 10
        return viewCell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dict.count
    }
//    @IBAction func selectZona(_ sender: UIButton) {
//    }
    
}
