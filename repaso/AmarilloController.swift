//
//  AmarilloController.swift
//  repaso
//
//  Created by MaestroD1 on 10/31/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

import UIKit

class AmarilloController : UIViewController {
    var informacion : String?
    
    @IBOutlet weak var lblInformacion: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if informacion != nil {
            lblInformacion.text = informacion
        }
    }
}
